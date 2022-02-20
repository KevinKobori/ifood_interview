import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/empty_card.dart';
import 'package:wlstore/common/login_card.dart';
import 'package:wlstore/common/order/order_tile.dart';
import 'package:wlstore/models/orders_manager.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Pedidos'),
      ),
      body: Consumer<OrdersManager>(
        builder: (_, ordersManager, __) {
          if (ordersManager.user == null) {
            return LoginCard();
          }
          if (ordersManager.orders.isEmpty) {
            return const EmptyCard(
              title: 'Nenhuma compra encontrada!',
              iconData: Icons.border_clear,
            );
          }
          return ListView.builder(
            itemCount: ordersManager.orders.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  index == ordersManager.orders.length - 1 ? 96 : 0,
                ),
                child: OrderTile(ordersManager.orders.reversed.toList()[index]),
              );
            },
          );
        },
      ),
    );
  }
}
