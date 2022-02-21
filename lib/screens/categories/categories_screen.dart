import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/custom_search_text_field.dart';
// import 'package:wlstore/common/custom_search_text_field_2.dart';
import 'package:wlstore/models/category_manager.dart';
import 'package:wlstore/models/product_manager.dart';
import 'package:wlstore/models/user_manager.dart';

// import '../../models/user/user_manager.dart';
import 'components/category_grid_item.dart';
// import '../../screens/companies_edit_company/edit_company_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // final CategoryManager categoryManager = Provider.of(context, listen: false);
    // categoryManager.loadCompanies();
    // categoryManager.search = '';
    final ProductManager productManager = Provider.of(context, listen: false);
    // if (widget.category != null) {
    //   productManager.loadAllCategoryProducts(widget.category.id);
    // } else {
    //   context.read<CategoryManager>().setCategory(category: null);
    productManager.search = '';
    // productManager.loadAllProducts();
    // }
  }

  @override
  Widget build(BuildContext context) {
    // final CategoryManager categoryManager = Provider.of(context, listen: false);
    return Consumer<CategoryManager>(
      builder: (_, categoryManager, __) {
        return Consumer<UserManager>(
          builder: (_, userManager, __) {
            // categoryManager.loadCompanies();
            return Scaffold(
              // extendBody: true,
              body: CustomScrollView(
                slivers: <Widget>[
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  // const SliverAppBar(
                  //   backgroundColor: Colors.red,
                  // ),
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    elevation: 0,
                    expandedHeight: 10,
                    toolbarHeight: 40,
                    // backgroundColor: Colors.green,
                    // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    title: const Text(
                      'Categorias',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    actions: [
                      // userManager.adminEnabled
                      //     ? [
                      //         IconButton(
                      //           icon: Icon(Icons.add),
                      //           onPressed: () {
                      //             Navigator.of(context).pushNamed(
                      //               '/edit_category',
                      //             );
                      //           },
                      //         )
                      //       ]
                      //     : []

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
                      ),
                    ],
                  ),
                  SliverAppBar(
                    // expandedHeight: 100,
                    toolbarHeight: 52,
                    pinned: true,
                    elevation: 0,
                    // backgroundColor: Colors.blue,
                    // // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    leading: Container(),
                    leadingWidth: 0,
                    title: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.fromLTRB(
                        16,
                        0,
                        16,
                        5,
                      ),
                      margin: const EdgeInsets.fromLTRB(
                        0,
                        5,
                        0,
                        0,
                      ),
                      child: customSearchTextField(
                        context: context,
                        onChanged: (value) => categoryManager.search = value,
                        hintText: "Pesquisar categoria",
                      ),
                    ),

                    ///[light mode] TODO
                    // title: Container(
                    //   height: 38,
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey[200],
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: TextField(
                    //     onChanged: (value) => categoryManager.search = value,
                    //     decoration: InputDecoration(
                    //       contentPadding: const EdgeInsets.symmetric(
                    //           horizontal: 20, vertical: 12),
                    //       border: InputBorder.none,
                    //       focusedBorder: InputBorder.none,
                    //       enabledBorder: InputBorder.none,
                    //       hintText: "Pesquisar lojas",
                    //       hintStyle: TextStyle(color: Colors.grey[400]),
                    //       prefixIcon: const Icon(Icons.search),
                    //     ),
                    //   ),
                    // ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(
                      8.0,
                      32.0,
                      8.0,
                      74.0,
                    ),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 203,
                        childAspectRatio: 0.90,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return CategoryGridItem(
                              categoryManager.filteredCategories[index],
                              'store');
                        },
                        childCount: categoryManager.filteredCategories.length,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 16,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
