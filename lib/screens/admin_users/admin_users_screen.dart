import 'package:alphabet_list_scroll_view/alphabet_list_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:wlstore/common/custom_drawer/custom_drawer.dart';
import 'package:wlstore/models/admin_orders_manager.dart';
import 'package:wlstore/models/admin_users_manager.dart';
import 'package:wlstore/models/page_manager.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/models/user_manager.dart';

class AdminUsersScreen extends StatefulWidget {
  @override
  State<AdminUsersScreen> createState() => _AdminUsersScreenState();
}

class _AdminUsersScreenState extends State<AdminUsersScreen> {
  @override
  void initState() {
    super.initState();
    final UserManager userManager = Provider.of(context, listen: false);
    if (!userManager.adminEnabled) {
      Navigator.of(context).pushReplacementNamed('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
      ),
      body: Consumer<AdminUsersManager>(
        builder: (_, adminUsersManager, __) {
          return AlphabetListScrollView(
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  index == adminUsersManager.users.length - 1 ? 96 : 0,
                ),
                child: Container(
                  child: ListTile(
                    title: Text(
                      adminUsersManager.users[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        // color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      adminUsersManager.users[index].email,
                      style: TextStyle(
                          // color: Colors.white,
                          ),
                    ),
                    onTap: () {
                      context
                          .read<AdminOrdersManager>()
                          .setUserFilter(adminUsersManager.users[index]);
                      Navigator.of(context).pushNamed('/admin/orders');
                      // context.read<PageManager>().setPage(6);
                    },
                  ),
                ),
              );
            },
            highlightTextStyle: TextStyle(
              // color: Colors.white,
              fontSize: 20,
            ),
            indexedHeight: (index) => 80,
            strList: adminUsersManager.names,
            showPreview: true,
          );
        },
      ),
    );
  }
}
