import 'package:flutter/material.dart';
import 'package:wlstore/common/price_card.dart';
import 'package:wlstore/common/whatsapp_card.dart';
import 'package:wlstore/models/cart_manager.dart';
import 'package:wlstore/screens/address/components/address_card.dart';
import 'package:provider/provider.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrega'),
      ),
      body: ListView(
        children: <Widget>[
          AddressCard(),
          Consumer<CartManager>(
            builder: (_, cartManager, __) {
              return PriceCard(
                buttonText: 'Continuar para o Pagamento',
                onPressed: cartManager.isAddressValid
                    ? () {
                        Navigator.of(context).pushNamed('/checkout');
                      }
                    : null,
              );
            },
          ),
          const WhatsappCard(
            buttonText: 'Whatsapp',
            onPressed: true,
            cartDoubt: true,
          ),
        ],
      ),
    );
  }
}
