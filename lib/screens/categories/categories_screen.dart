import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/search_dialog.dart';
import 'package:wlstore/models/category_manager.dart';
import 'package:wlstore/models/user_manager.dart';
import 'package:wlstore/screens/categories/components/category_list_tile.dart';

import 'components/category_list_tile.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<CategoryManager>(
          builder: (_, categoryManager, __) {
            if (categoryManager.search.isEmpty) {
              return const Text('Categorias');
            } else {
              return LayoutBuilder(
                builder: (_, constraints) {
                  return GestureDetector(
                    onTap: () async {
                      final search = await showDialog<String>(
                          context: context,
                          builder: (_) => SearchDialog(categoryManager.search));
                      if (search != null) {
                        categoryManager.search = search;
                      }
                    },
                    child: Container(
                      width: constraints.biggest.width,
                      child: Text(
                        categoryManager.search,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
        actions: <Widget>[
          Consumer<CategoryManager>(
            builder: (_, categoryManager, __) {
              if (categoryManager.search.isEmpty) {
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () async {
                    final search = await showDialog<String>(
                        context: context,
                        builder: (_) => SearchDialog(categoryManager.search));
                    if (search != null) {
                      categoryManager.search = search;
                    }
                  },
                );
              } else {
                return IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () async {
                    categoryManager.search = '';
                  },
                );
              }
            },
          ),
          Consumer<UserManager>(
            builder: (_, userManager, __) {
              if (userManager.adminEnabled) {
                return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/edit_category',
                    );
                  },
                );
              } else {
                return Container();
              }
            },
          )
        ],
      ),

      // AppBar(
      // title: Consumer<CategoryManager>(
      //   builder: (_, categoryManager, __) {
      //     if (categoryManager.search.isEmpty) {
      //       return const Text('Categorias');
      //     } else {
      //       return LayoutBuilder(
      //         builder: (_, constraints) {
      //           return GestureDetector(
      //             onTap: () async {
      //               final search = await showDialog<String>(
      //                   context: context,
      //                   builder: (_) => SearchDialog(categoryManager.search));
      //               if (search != null) {
      //                 categoryManager.search = search;
      //               }
      //             },
      //             child: Container(
      //               width: constraints.biggest.width,
      //               child: Text(
      //                 categoryManager.search,
      //                 textAlign: TextAlign.center,
      //               ),
      //             ),
      //           );
      //         },
      //       );
      //     }
      //   },
      // ),
      // actions: <Widget>[
      //   Consumer<CategoryManager>(
      //     builder: (_, categoryManager, __) {
      //       if (categoryManager.search.isEmpty) {
      //         return IconButton(
      //           icon: Icon(Icons.search),
      //           onPressed: () async {
      //             final search = await showDialog<String>(
      //                 context: context,
      //                 builder: (_) => SearchDialog(categoryManager.search));
      //             if (search != null) {
      //               categoryManager.search = search;
      //             }
      //           },
      //         );
      //       } else {
      //         return IconButton(
      //           icon: Icon(Icons.close),
      //           onPressed: () async {
      //             categoryManager.search = '';
      //           },
      //         );
      //       }
      //     },
      //   ),
      //   Consumer<UserManager>(
      //     builder: (_, userManager, __) {
      //       if (userManager.adminEnabled) {
      //         return IconButton(
      //           icon: Icon(Icons.add),
      //           onPressed: () {
      //             Navigator.of(context).pushNamed(
      //               '/edit_category',
      //             );
      //           },
      //         );
      //       } else {
      //         return Container();
      //       }
      //     },
      //   )
      // ],
      // ),
      body: Consumer<CategoryManager>(
        builder: (_, categoryManager, __) {
          final filteredCategories = categoryManager.filteredCategories;
          return ListView.builder(
            itemCount: filteredCategories.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  index == filteredCategories.length - 1 ? 96 : 0,
                ),
                child: CategoryListTile(filteredCategories[index]),
              );
            },
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Theme.of(context).primaryColor,
      //   onPressed: () {
      //     Navigator.of(context).pushNamed('/cart');
      //   },
      //   child: Icon(Icons.shopping_cart),
      // ),
    );
  }
}
