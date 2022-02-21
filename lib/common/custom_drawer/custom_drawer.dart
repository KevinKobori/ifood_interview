import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/custom_drawer/custom_drawer_header.dart';
import 'package:wlstore/common/custom_drawer/drawer_tile.dart';
import 'package:wlstore/models/user_manager.dart';

import '../whatsapp_card.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          // Container(
          //   decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //     colors: [
          //       Color.fromARGB(255, 203, 236, 241),
          //       Colors.white,
          //     ],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //   )),
          // ),
          ListView(
            children: <Widget>[
              CustomDrawerHeader(),
              const Divider(),
              const DrawerTile(
                iconData: Icons.home,
                title: 'Início',
                page: 0,
              ),
              // const DrawerTile(
              //   iconData: Icons.list,
              //   title: 'Categorias',
              //   page: 1,
              // ),
              // const DrawerTile(
              //   iconData: Icons.list,
              //   title: 'Produtos',
              //   page: 2,
              // ),
              // const DrawerTile(
              //   iconData: Icons.playlist_add_check,
              //   title: 'Pedidos',
              //   page: 3,
              // ),
              const DrawerTile(
                iconData: Icons.shopping_cart,
                title: 'Carrinho',
                path: '/cart',
              ),
              const DrawerTile(
                iconData: Icons.location_on,
                title: 'Lojas',
                path: '/stores',
              ),

              Consumer<UserManager>(
                builder: (_, userManager, __) {
                  if (userManager.adminEnabled) {
                    return Column(
                      children: const <Widget>[
                        Divider(),
                        DrawerTile(
                          iconData: Icons.settings,
                          title: 'Usuários',
                          path: '/admin/users',
                        ),
                        DrawerTile(
                          iconData: Icons.settings,
                          title: 'Pedidos',
                          path: '/admin/orders',
                        ),
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              const Divider(),
              const WhatsappCard(
                buttonText: 'Whatsapp',
                onPressed: true,
                cartDoubt: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
