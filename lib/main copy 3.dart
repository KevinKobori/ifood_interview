import 'package:cielo_payment_link/payment_link.dart';

Future<void> main() async {
  Future<PaymentLinkResponse> getPaymentLinkResponse() async {
    final paymentLink = PaymentLink(
        clientId: '30cdfad2-3fbb-442a-9c76-e440ee67d6e2',
        clientSecret: 'OSKVVKHHQYLMSQUKYRWLFQEWHFMIBMTGEHNEUJHD',
        environment: PaymentLinkEnvironment.SANDBOX);

    final request = PaymentLinkRequest(
      name: 'your product name',
      type: TypeProduct.ASSET,
      price: '20',
      description: 'description of your product',
      maxNumberOfInstallments: '10',
      expirationDate: '2025-01-01',
      quantity: 2,
      shipping: ShippingProduct(
        type: ShippingType.CORREIOS,
        name: 'delivery name',
        price: '10000',
        originZipcode: '06018953',
      ),
    );

    try {
      final PaymentLinkResponse response =
          await paymentLink.create(request: request).then((element) async {
        print('AAATESTE: >>> ' + element.price.toString());
      });
      // asyncSnapshot. = null;
      // return response;
    } on ErrorResponse catch (e) {
      print('BBBTESTE: >>> ' + e.code.toString());
      return null;
    }
  }

  PaymentLinkResponse value = await getPaymentLinkResponse();
  // print('AAATESTE: >>> ' + value.name);
}
