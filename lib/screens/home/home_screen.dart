import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/custom_icon_button_2.dart';
import 'package:wlstore/common/custom_search_text_field.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/product_manager.dart';
import 'package:wlstore/models/user_manager.dart';
import 'package:wlstore/screens/home/components/add_section_widget.dart';
import 'package:wlstore/screens/products/components/product_list_tile.dart';
import 'package:wlstore/utils/styles/app_color_scheme.dart';
import 'components/section_categories/section_categories_list.dart';
import 'components/section_products/section_products_list.dart';
// /Users/kevinkobori/Documents/github/wlstore/lib/screens/base/base_screen.dart

// GlobalKey<ScaffoldState> scafffoldKey = GlobalKey();

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // GlobalKey<ScaffoldState> scafffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  Widget getPageList({ProductManager productManager}) {
    Widget getEditRow() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Consumer2<UserManager, HomeManager>(
            builder: (_, userManager, homeManager, __) {
              if (userManager.adminEnabled && !homeManager.loading) {
                if (homeManager.editing) {
                  return PopupMenuButton(
                    onSelected: (e) {
                      if (e == 'SAVE') {
                        homeManager.saveEditing();
                      } else {
                        homeManager.discardEditing();
                      }
                    },
                    itemBuilder: (_) {
                      return ['SAVE', 'DISCARD'].map((e) {
                        return PopupMenuItem(
                          value: e,
                          child: Text(e),
                        );
                      }).toList();
                    },
                  );
                } else {
                  return IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    onPressed: homeManager.enterEditing,
                  );
                }
              } else
                return const SizedBox(height: 6);
            },
          ),
        ],
      );
    }

    if (productManager.filteredProducts.isNotEmpty &&
        productManager.search != '') {
      final List<Widget> listChildren =
          productManager.filteredProducts.map<Widget>((element) {
        return ProductListTile(element, null);
      }).toList();

      final List<Widget> childrenWithPadding = [
        ...[const SizedBox(height: 28)],
        ...listChildren
      ];
      return SliverList(
        delegate: SliverChildListDelegate(childrenWithPadding),
      );

      // return ListView.builder(
      //   itemCount: filteredProducts.length,
      //   itemBuilder: (_, index) {
      //     return ProductListTile(filteredProducts[index], null);
      //   },
      // );
    } else if (productManager.search != '') {
      return SliverToBoxAdapter(
        child: Center(
            child: Text(
          'Nenhum produto encontrado',
          style: TextStyle(
            color: Theme.of(context).errorColor,
          ),
        )),
      );
    } else {
      return Consumer<HomeManager>(
        builder: (_, homeManager, __) {
          if (homeManager.loading) {
            return const SliverToBoxAdapter(
              child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
                backgroundColor: Colors.transparent,
              ),
            );
          } else {
            final List<Widget> listChildren =
                homeManager.sections.map<Widget>((section) {
              switch (section.type) {
                case 'products-list':
                  return SectionProductsList(section);
                case 'categories-list':
                  return SectionCategoriesList(section);
                // case 'Staggered':
                //   return SectionStaggered(section);
                default:
                  return Container();
              }
            }).toList();

            final List<Widget> childrenWithPadding = [
              ...[getEditRow()],
              // ...[const SizedBox(height: 6)],
              ...listChildren
            ];

            if (homeManager.editing)
              childrenWithPadding.add(AddSectionWidget(homeManager));

            return SliverList(
              delegate: SliverChildListDelegate(childrenWithPadding),
            );
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final sliverAppBarHeight = MediaQuery.of(context).size.height * 0.40;
    return
        // Scaffold(
        //   // key: scafffoldKey,
        //   // drawer: CustomDrawer(),
        //   // drawerEnableOpenDragGesture: false,
        //   body:
        Consumer<ProductManager>(builder: (_, productManager, __) {
      // final List<Product> filteredProducts = productManager.filteredProducts;
      return Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              // SliverAppBar(
              //   floating: true,
              //   // pinned: true,
              //   snap: true,
              //   elevation: 0,
              //   // backgroundColor: Colors.transparent,
              //   flexibleSpace: FlexibleSpaceBar(
              //     title: Text(
              //       S.of(context).appName,
              //     ),
              //     centerTitle: false,
              //   ),
              //   //  leading: Align(
              //   //   alignment: Alignment.centerLeft,
              //   //   child: Container(
              //   //     height: 40,
              //   //     width: 40,
              //   //     margin: EdgeInsets.only(left: 16),
              //   //     decoration: BoxDecoration(
              //   //       color: Colors.white,
              //   //       borderRadius: BorderRadius.circular(100),
              //   //       boxShadow: [
              //   //         BoxShadow(
              //   //           color: Colors.black.withOpacity(0.2),
              //   //           spreadRadius: 0,
              //   //           blurRadius: 4,
              //   //           offset: Offset(0, 4),
              //   //         ),
              //   //       ],
              //   //     ),
              //   //     child: IconButton(
              //   //       onPressed: () {
              //   //         // Navigator.of(context).pop();
              //   //       },
              //   //       icon: Icon(
              //   //         Icons.data_usage_rounded,
              //   //         color: Colors.black,
              //   //       ),
              //   //     ),
              //   //   ),
              //   // ),
              //   actions: <Widget>[
              //     IconButton(
              //       icon: const Icon(Icons.shopping_cart),
              //       onPressed: () => Navigator.of(context).pushNamed('/cart'),
              //     ),
              //     Consumer2<UserManager, HomeManager>(
              //       builder: (_, userManager, homeManager, __) {
              //         if (userManager.adminEnabled && !homeManager.loading) {
              //           if (homeManager.editing) {
              //             return PopupMenuButton(
              //               onSelected: (e) {
              //                 if (e == 'Salvar') {
              //                   homeManager.saveEditing();
              //                 } else {
              //                   homeManager.discardEditing();
              //                 }
              //               },
              //               itemBuilder: (_) {
              //                 return ['Salvar', 'Descartar'].map((e) {
              //                   return PopupMenuItem(
              //                     value: e,
              //                     child: Text(e),
              //                   );
              //                 }).toList();
              //               },
              //             );
              //           } else {
              //             return IconButton(
              //               icon: const Icon(Icons.edit),
              //               onPressed: homeManager.enterEditing,
              //             );
              //           }
              //         } else
              //           return Container();
              //       },
              //     ),
              //   ],
              // ),
              SliverToBoxAdapter(
                child: SizedBox(height: 32),
                // snap: true,
                // pinned: true,
                // floating: true,
              ),
              SliverAppBar(
                elevation: 10,
                shadowColor:
                    AppColorScheme.shadowTealColor, //Color(0xFFFFFFFF),//
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: sliverAppBarHeight,
                floating: true,
                pinned: true,
                snap: true,
                collapsedHeight: 100,
                actionsIconTheme: const IconThemeData(opacity: 0.0),
                toolbarHeight: 56,
                centerTitle: false,
                leadingWidth: 0,
                titleSpacing: 0,
                leading: Container(),
                title: Container(
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  child: Row(
                    children: <Widget>[
                      Builder(
                        builder: (context) => // Ensure Scaffold is in context
                            customIconButton(
                          const EdgeInsets.only(left: 0),
                          Icons.person,
                          // () => scafffoldKey.currentState.openDrawer(),
                          () => Scaffold.of(context).openDrawer(),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Consumer<UserManager>(builder: (_, userManager, __) {
                        if (userManager.userModel?.name != null) {
                          return Text(
                            'Olá, ${userManager.userModel?.name}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: Theme.of(context).textTheme.subtitle2,
                          );
                        } else {
                          return Container();
                        }
                      }),
                      // Container(
                      //   height: 40,
                      //   width: 40,
                      //   // margin: EdgeInsets.only(left: 32),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(100),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.black.withOpacity(0.2),
                      //         spreadRadius: 0,
                      //         blurRadius: 4,
                      //         offset: Offset(0, 4),
                      //       ),
                      //     ],
                      //   ),
                      //   child: IconButton(
                      //     onPressed: () {
                      //       // Navigator.of(context).pop();
                      //     },
                      //     icon: Icon(
                      //       Icons.data_usage_rounded,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      // ),
                      const Spacer(),
                      // Consumer2<UserManager, HomeManager>(
                      //   builder: (_, userManager, homeManager, __) {
                      //     if (userManager.adminEnabled &&
                      //         !homeManager.loading) {
                      //       if (homeManager.editing) {
                      //         return PopupMenuButton(
                      //           onSelected: (e) {
                      //             if (e == 'SAVE') {
                      //               homeManager.saveEditing();
                      //             } else {
                      //               homeManager.discardEditing();
                      //             }
                      //           },
                      //           itemBuilder: (_) {
                      //             return ['SAVE', 'DISCARD'].map((e) {
                      //               return PopupMenuItem(
                      //                 value: e,
                      //                 child: Text(e),
                      //               );
                      //             }).toList();
                      //           },
                      //         );
                      //       } else {
                      //         return IconButton(
                      //           icon: Icon(
                      //             Icons.edit,
                      //             color: Colors.black,
                      //           ),
                      //           onPressed: homeManager.enterEditing,
                      //         );
                      //       }
                      //     } else
                      //       return Container();
                      //   },
                      // ),
                      customIconButton(
                        const EdgeInsets.only(left: 0),
                        Icons.notifications,
                        () {},
                      ),
                      // Container(
                      //   height: 40,
                      //   width: 40,
                      //   margin: EdgeInsets.only(left: 32),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(100),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.black.withOpacity(0.2),
                      //         spreadRadius: 0,
                      //         blurRadius: 4,
                      //         offset: Offset(0, 4),
                      //       ),
                      //     ],
                      //   ),
                      //   child: IconButton(
                      //     onPressed: () {},
                      //     // Navigator.of(context).pop();
                      //     icon: Icon(
                      //       Icons.notifications,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                // leading: Container(),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    padding: const EdgeInsets.only(
                      left: 38,
                      right: 38,
                      bottom: 106,
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'Bem vindo ao ',
                              style: Theme.of(context).textTheme.headline6,
                              children: [
                                TextSpan(
                                  text: 'WLStore',
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Procurando\npor algo?', //'What are\nyou looking for?',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  titlePadding: const EdgeInsets.all(0),
                  title: Container(
                    height: sliverAppBarHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 72,
                          padding: const EdgeInsets.fromLTRB(32, 0, 84, 0),

                          //   left: 32, right: 84),
                          // padding: const EdgeInsets.only(left: 32, right: 84),
                          // color: Colors.blue,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: customIconButton(
                              const EdgeInsets.only(left: 32),
                              Icons.shopping_cart,
                              () => Navigator.of(context).pushNamed('/cart'),
                            ),
                          ),
                        ),
                        // Consumer<ProductManager>(
                        //   builder: (_, productManager, __) {
                        //     if (productManager.search.isEmpty) {
                        //       return IconButton(
                        //         icon: Icon(Icons.search),
                        //         onPressed: () async {
                        //           final search = await showDialog<String>(
                        //               context: context,
                        //               builder: (_) =>
                        //                   SearchDialog(productManager.search));
                        //           if (search != null) {
                        //             productManager.search = search;
                        //           }
                        //         },
                        //       );
                        //     } else {
                        //       return IconButton(
                        //         icon: Icon(Icons.close),
                        //         onPressed: () async {
                        //           productManager.search = '';
                        //         },
                        //       );
                        //     }
                        //   },
                        // ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.black,
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
                          child: customSearchTextField(
                            context: context,
                            onChanged: (value) => productManager.search = value,
                            hintText: "Procurar produtos",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Consumer<HomeManager>(
              //   builder: (_, homeManager, __) {
              //     if (homeManager.loading) {
              //       return const SliverToBoxAdapter(
              //         child: LinearProgressIndicator(
              //           valueColor: AlwaysStoppedAnimation(Colors.white),
              //           backgroundColor: Colors.transparent,
              //         ),
              //       );
              //     } else {
              // return
              // Consumer<ProductManager>(builder: (_, productManager, __) {

              // }),
              getPageList(productManager: productManager),
              const SliverToBoxAdapter(child: SizedBox(height: 100)),
            ],
          ),
        ],
      );
    });
    // ),
  }
}
