import 'package:cielo_payment_link/payment_link.dart';

Future<void> main() async {
  Future<PaymentLinkResponse> getPaymentLinkResponse() async {
    final paymentLink = PaymentLink(
        clientId: 'ZJS5x2bWRTHf23WBcKQ0oQQYGqXwEFg5MvQzDEsjCEHsfMe8jx/',
        clientSecret: 'OEwogGOSAhrI684i7IMi4a3u3UBZPzo7kfhzQauK7AMwXgy7Ft',
        environment: PaymentLinkEnvironment.SANDBOX);

    final request = PaymentLinkRequest(
        type: TypeProduct.ASSET,
        name: 'Pedido',
        description: 'teste description',
        price: '1000000',
        weight: 2000000,
        expirationDate: '2037-06-19',
        maxNumberOfInstallments: '1',
        showDescription: true,
        quantity: 2,
        sku: "teste",
        shipping: ShippingProduct(
          type: ShippingType.CORREIOS,
          name: 'delivery',
          price: '10000',
          originZipcode: '06018953',
          // package: 
          // pickupData: 
        ),
        softDescriptor: "Pedido1234");

    try {
      PaymentLinkResponse response =
          await paymentLink.create(request: request);
      //     .then((element) async {
      //   print('AAATESTE: >>> ' + element.price.toString());
      // });
      print('AAATESTE: >>> ' + response.price.toString());
      return response;
    } on ErrorResponse catch (e) {
      print('BBBTESTE: >>> ' + e.code.toString());
      return null;
    }
  }

  PaymentLinkResponse value = await getPaymentLinkResponse();
  // print('CCCTESTE: >>> ' + value.name);
}
