import { CancelTransactionRequestModel, CaptureRequestModel, Cielo, CieloConstructor, EnumBrands, TransactionCreditCardRequestModel } from 'cielo';
import * as admin from 'firebase-admin';
import * as functions from 'firebase-functions';


admin.initializeApp(functions.config().firebase);

// Start writing Firebase Functions
// https://firebase.google.com/docs/functions/typescript

const merchantId = functions.config().cielo.merchantid;
const merchantKey = functions.config().cielo.merchantkey;

const cieloParams: CieloConstructor = {
	merchantId: merchantId,
	merchantKey: merchantKey,
	sandbox: true,
	debug: true,
}

const cielo = new Cielo(cieloParams);

export const authorizeCreditCard = functions.https.onCall(async (data, context) => {
	if (data === null) {
		return {
			"success": false,
			"error": {
				"code": -1,
				"message": "Dados não informados"
			}
		};
	}

	if (!context.auth) {
		return {
			"success": false,
			"error": {
				"code": -1,
				"message": "Nenhum usuário logado"
			}
		};
	}

	const userId = context.auth.uid;

	const snapshot = await admin.firestore().collection("users").doc(userId).get();
	const userData = snapshot.data() || {};

	console.log("Iniciando Autorização");

	let brand: EnumBrands;
	switch (data.creditCard.brand) {
		case "VISA":
			brand = EnumBrands.VISA;
			break;
		case "MASTERCARD":
			brand = EnumBrands.MASTER;
			break;
		case "AMEX":
			brand = EnumBrands.AMEX;
			break;
		case "ELO":
			brand = EnumBrands.ELO;
			break;
		case "JCB":
			brand = EnumBrands.JCB;
			break;
		case "DINERSCLUB":
			brand = EnumBrands.DINERS;
			break;
		case "DISCOVER":
			brand = EnumBrands.DISCOVERY;
			break;
		case "HIPERCARD":
			brand = EnumBrands.HIPERCARD;
			break;
		default:
			return {
				"success": false,
				"error": {
					"code": -1,
					"message": "Cartão não suportado: " + data.creditCard.brand
				}
			};
	}

	const saleData: TransactionCreditCardRequestModel = {
		merchantOrderId: data.merchantOrderId,
		customer: {
			name: userData.name,
			identity: data.cpf,
			identityType: 'CPF',
			email: userData.email,
			deliveryAddress: {
				street: userData.address.street,
				number: userData.address.number,
				complement: userData.address.complement,
				zipCode: userData.address.zipCode.replace('.', '').replace('-', ''),
				city: userData.address.city,
				state: userData.address.state,
				country: 'BRA',
				district: userData.address.district,
			}
		},
		payment: {
			currency: 'BRL',
			country: 'BRA',
			amount: data.amount,
			installments: data.installments,
			softDescriptor: data.softDescriptor.substring(0, 13),
			type: data.paymentType,
			capture: false,
			creditCard: {
				cardNumber: data.creditCard.cardNumber,
				holder: data.creditCard.holder,
				expirationDate: data.creditCard.expirationDate,
				securityCode: data.creditCard.securityCode,
				brand: brand
			}
		}
	}

	try {
		const transaction = await cielo.creditCard.transaction(saleData);

		if (transaction.payment.status === 1) {
			return {
				"success": true,
				"paymentId": transaction.payment.paymentId
			}
		} else {
			let message = '';
			switch (transaction.payment.returnCode) {
				case '5':
					message = 'Não Autorizada';
					break;
				case '57':
					message = 'Cartão expirado';
					break;
				case '78':
					message = 'Cartão bloqueado';
					break;
				case '99':
					message = 'Timeout';
					break;
				case '77':
					message = 'Cartão cancelado';
					break;
				case '70':
					message = 'Problemas com o Cartão de Crédito';
					break;
				default:
					message = transaction.payment.returnMessage;
					break;
			}
			return {
				"success": false,
				"status": transaction.payment.status,
				"error": {
					"code": transaction.payment.returnCode,
					"message": message
				}
			}
		}
	} catch (error) {
		console.log("Error ", error);
		return {
			"success": false,
			"error": {
				"code": error.response[0].Code,
				"message": error.response[0].Message
			}
		};
	}

});

export const captureCreditCard = functions.https.onCall(async (data, context) => {
	if (data === null) {
		return {
			"success": false,
			"error": {
				"code": -1,
				"message": "Dados não informados"
			}
		};
	}

	if (!context.auth) {
		return {
			"success": false,
			"error": {
				"code": -1,
				"message": "Nenhum usuário logado"
			}
		};
	}

	const captureParams: CaptureRequestModel = {
		paymentId: data.payId,
	}

	try {
		const capture = await cielo.creditCard.captureSaleTransaction(captureParams);

		if (capture.status === 2) {
			return { "success": true };
		} else {
			return {
				"success": false,
				"status": capture.status,
				"error": {
					"code": capture.returnCode,
					"message": capture.returnMessage,
				}
			};
		}
	} catch (error) {
		console.log("Error ", error);
		return {
			"success": false,
			"error": {
				"code": error.response[0].Code,
				"message": error.response[0].Message
			}
		};
	}

});

export const cancelCreditCard = functions.https.onCall(async (data, context) => {
	if (data === null) {
		return {
			"success": false,
			"error": {
				"code": -1,
				"message": "Dados não informados"
			}
		};
	}

	if (!context.auth) {
		return {
			"success": false,
			"error": {
				"code": -1,
				"message": "Nenhum usuário logado"
			}
		};
	}

	const cancelParams: CancelTransactionRequestModel = {
		paymentId: data.payId,
	}

	try {
		const cancel = await cielo.creditCard.cancelTransaction(cancelParams);

		if (cancel.status === 10 || cancel.status === 11) {
			return { "success": true };
		} else {
			return {
				"success": false,
				"status": cancel.status,
				"error": {
					"code": cancel.returnCode,
					"message": cancel.returnMessage,
				}
			};
		}
	} catch (error) {
		console.log("Error ", error);
		return {
			"success": false,
			"error": {
				"code": error.response[0].Code,
				"message": error.response[0].Message
			}
		};
	}

});

export const getUserData = functions.https.onCall(async (data, context) => {
	if (!context.auth) {
		return {
			"data": "Nenhum usuário logado"
		};
	}

	console.log(context.auth.uid);

	const snapshot = await admin.firestore().collection("users").doc(context.auth.uid).get();

	console.log(snapshot.data());

	return {
		"data": snapshot.data()
	};
});

export const addMessage = functions.https.onCall(async (data, context) => {
	console.log(data);

	const snapshot = await admin.firestore().collection("messages").add(data);

	return { "success": snapshot.id };
});

export const onNewOrder = functions.firestore.document("/orders/{orderId}").onCreate(async (snapshot, context) => {

	const orderId = context.params.orderId;

	const querySnapshot = await admin.firestore().collection("admins").get();

	const adminsIds = querySnapshot.docs.map(doc => doc.id);



	let adminsTokens: string[] = [];
	for (const adminId of adminsIds) {
		const tokensAdmin: string[] = await getDeviceTokens(
			adminId,
		);

		if (tokensAdmin.length > 0) {
			let userNotificationPayload = createNotificationPayload({
				title: 'Novo Pedido',
				body: 'Nova venda realizada. Pedido: ' + orderId,
				type: 'onNewOrder',
				click_action: 'FLUTTER_NOTIFICATION_CLICK',
				createdAt: Date.now().toString(),
				tokens: tokensAdmin.toString(),
				usersIds: [adminId].toString(),
				orderId: context.params.orderId,
			});
			await saveNotification(
				adminId,
				userNotificationPayload,
			);
		}

		adminsTokens = adminsTokens.concat(tokensAdmin);
	}

	if (adminsTokens.length > 0) {
		const listUsersNotificationPayload = createNotificationPayload({
			title: 'Novo Pedido',
			body: 'Nova venda realizada. Pedido: ' + orderId,
			type: 'onNewOrder',
			click_action: 'FLUTTER_NOTIFICATION_CLICK',
			createdAt: Date.now().toString(),
			tokens: adminsTokens.toString(),
			usersIds: adminsIds.toString(),
			orderId: context.params.orderId,
		});

		await sendPushFCM(
			adminsTokens,
			listUsersNotificationPayload,
		);
	}
});

const orderStatus = new Map([
	[0, "Cancelado"],
	[1, "Em Preparação"],
	[2, "Em Transporte"],
	[3, "Entregue"]
])

export const onOrderStatusChanged = functions.firestore.document("/orders/{orderId}").onUpdate(async (snapshot, context) => {

	const beforeStatus = snapshot.before.data().status;

	const afterStatus = snapshot.after.data().status;

	if (beforeStatus !== afterStatus) {

		const tokensUser = await getDeviceTokens(
			snapshot.after.data().user,
		);

		if (tokensUser.length > 0) {
			const userNotificationPayload = createNotificationPayload({
				title: 'Pedido: ' + context.params.orderId,
				body: 'Status atualizado para: ' + orderStatus.get(afterStatus),
				type: 'onOrderStatusChanged',
				click_action: 'FLUTTER_NOTIFICATION_CLICK',
				createdAt: Date.now().toString(),
				tokens: tokensUser.toString(),
				usersIds: [snapshot.after.data().user].toString(),
				orderId: context.params.orderId,
			});
			await saveNotification(
				snapshot.after.data().user,
				userNotificationPayload,
			);
			await sendPushFCM(
				tokensUser,
				userNotificationPayload,
			)
		}

	}
});

async function getDeviceTokens(uid: string) {
	const querySnapshot = await admin.firestore().collection("users").doc(uid).collection("tokens").get();

	const tokens = querySnapshot.docs.map(doc => doc.id);

	return tokens;
}


async function saveNotification(uid: string, payload: object) {
	await admin.firestore().collection("users").doc(uid).collection("notifications").add(payload);
	return;
}

interface createNotificationPayloadNamedParameters {
	title: string;
	body: string;
	type: string;
	tag?: string;
	icon?: string;
	badge?: string;
	color?: string;
	sound?: string;
	click_action: string;
	readed?: string;
	deleted?: string;
	createdAt: string;
	modifiedAt?: string;
	tokens?: string;
	usersIds?: string;
	orderId?: string;
}

function createNotificationPayload({ title, body, type, tag = '', icon = '', badge = '', color = '', sound = '', click_action, readed = 'false', deleted = 'false', createdAt, modifiedAt = Date.now().toString(), tokens = '', usersIds = '', orderId = '' }: createNotificationPayloadNamedParameters): object { //FirebaseFirestore.Timestamp) { // token: String, 
	const payload = {
		notification: {
			title: title,
			body: body,
			tag: tag,
			icon: icon,
			badge: badge,
			color: color,
			sound: sound,
			click_action: click_action,
		},
		data: {
			type: type,
			readed: readed,
			deleted: deleted,
			createdAt: createdAt,
			modifiedAt: modifiedAt,
			// tokens: tokens,
			// usersIds: usersIds,
			// orderId: orderId,
		},
	};
	// const TWO_WEEKS_IN_SECONDS = 14 * 24 * 60 * 60
	// const purchaseDate = admin.firestore.Timestamp.now()
	// const expirationDate = new admin.firestore.Timestamp(
	// 	purchaseDate.seconds + TWO_WEEKS_IN_SECONDS,
	// 	purchaseDate.nanoseconds)
	// console.log(purchaseDate.toDate())
	// console.log(expirationDate.toDate())
	return payload;
}

async function sendPushFCM(tokens: string[], payload: object) {
	// if (tokens.length > 0) {
	return admin.messaging().sendToDevice(tokens, payload);
	// }
	// return;
}

