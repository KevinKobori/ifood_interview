import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/models/admin_orders_manager.dart';
import 'package:wlstore/models/page_manager.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    this.iconData,
    this.title,
    this.page,
    this.path = '',
  });

  final IconData iconData;
  final String title;
  final int page;
  final String path;

  @override
  Widget build(BuildContext context) {
    final int curPage = context.watch<PageManager>().page;
    final Color primaryColor = Theme.of(context).primaryColor;

    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
        if (path.isNotEmpty) {
          if (path == '/admin/orders') {
            context.read<AdminOrdersManager>().setUserFilter(null);
          }
          Navigator.of(context).pushNamed(path);
        } else {
          context.read<PageManager>().setPage(page);
        }
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(
                iconData,
                size: 32,
                color: curPage == page ? primaryColor : Colors.grey[700],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: curPage == page ? primaryColor : Colors.grey[700]),
            )
          ],
        ),
      ),
    );
  }
}
