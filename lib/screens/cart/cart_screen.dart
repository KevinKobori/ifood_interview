import 'package:flutter/material.dart';
import 'package:wlstore/common/empty_card.dart';
import 'package:wlstore/common/login_card.dart';
import 'package:wlstore/common/price_card.dart';
import 'package:wlstore/common/whatsapp_card.dart';
import 'package:wlstore/models/cart_manager.dart';
import 'package:wlstore/screens/cart/components/cart_tile.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
      ),
      body: Consumer<CartManager>(
        builder: (_, cartManager, __) {
          if (cartManager.user == null) {
            return LoginCard();
          }

          if (cartManager.items.isEmpty) {
            return const EmptyCard(
              iconData: Icons.remove_shopping_cart,
              title: 'Nenhum produto no carrinho!',
            );
          }

          return ListView(
            children: <Widget>[
              Column(
                children: cartManager.items
                    .map((cartProduct) => CartTile(cartProduct))
                    .toList(),
              ),
              PriceCard(
                buttonText: 'Continuar para Entrega',
                onPressed: cartManager.isCartValid
                    ? () {
                        Navigator.of(context).pushNamed('/address');
                      }
                    : null,
              ),
              const WhatsappCard(
                buttonText: 'Whatsapp',
                onPressed: true,
                cartDoubt: true,
              ),
            ],
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Theme.of(context).primaryColor,
      //   onPressed: () {
      //     Navigator.of(context).pushNamed('/cart');
      //   },
      //   child: Icon(Icons.whatshot),
      // ),
    );
  }
}
