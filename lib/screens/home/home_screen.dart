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
  @override
  void initState() {
    super.initState();
    final ProductManager providerProductManager =
        Provider.of(context, listen: false);
    providerProductManager.search = '';
  }

  Widget getEditRow() {
    return Consumer2<UserManager, HomeManager>(
      builder: (_, userManager, homeManager, __) {
        if (userManager.adminEnabled)
          return Container(
            padding: const EdgeInsets.fromLTRB(
              16,
              0,
              16,
              0,
            ),
            height: 40,
            // color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                if (!homeManager.loading)
                  if (homeManager.editing)
                    PopupMenuButton(
                      onSelected: (e) {
                        if (e == 'SALVAR') {
                          homeManager.saveEditing();
                        } else {
                          homeManager.discardEditing();
                        }
                      },
                      itemBuilder: (_) {
                        ['SALVAR', 'DESCARTAR'].map((e) {
                          return PopupMenuItem(
                            value: e,
                            child: Text(e),
                          );
                        }).toList();
                      },
                    )
                  else
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.black,
                        // size: 16,
                      ),
                      onPressed: homeManager.enterEditing,
                    )
                else
                  const SizedBox(height: 6)
              ],
            ),
          );
        else
          return Container();
      },
    );
  }

  Widget getPageList({
    ProductManager productManager,
  }) {
    if (productManager.filteredProducts.isNotEmpty &&
        productManager.search != '') {
      final List<Widget> listChildren =
          productManager.filteredProducts.map<Widget>((element) {
        return ProductListTile(element, null);
      }).toList();

      final List<Widget> childrenWithPadding = [
        ...[const SizedBox(height: 28)],
        ...listChildren,
        ...[const SizedBox(height: 92)],
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
          'Nenhum produto encontrado', // TODO .i18n
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
              ...listChildren,
              // ...[const SizedBox(height: 92)],
            ];

            if (homeManager.editing) {
              childrenWithPadding.add(AddSectionWidget(homeManager));
            }

            childrenWithPadding.add(const SizedBox(height: 92));
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
    const sliverAppBarHeight =
        300.0; //MediaQuery.of(context).size.height * 0.40;
    return Consumer<ProductManager>(builder: (_, productManager, __) {
      return Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: SizedBox(height: 32),
              ),
              SliverAppBar(
                elevation: 10,
                shadowColor: AppColorScheme.shadowTealColor,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                expandedHeight: sliverAppBarHeight,
                floating: true,
                pinned: true,
                snap: true,
                collapsedHeight: 102,
                actionsIconTheme: const IconThemeData(opacity: 0.0),
                centerTitle: false,
                leadingWidth: 0,
                titleSpacing: 0,
                leading: Container(),
                title: Container(
                  padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                  child: Row(
                    children: <Widget>[
                      Builder(
                        builder: (context) => customCardIconButton(
                          icon: Icons.person,
                          onPressed: () => Scaffold.of(context).openDrawer(),
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
                      const Spacer(),
                      customCardIconButton(
                        icon: Icons.notifications,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
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
                              color: AppColorScheme.darkBlue.shade600,
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
                          height: 76, //84,
                          padding: const EdgeInsets.fromLTRB(72, 0, 72, 0),
                          // color: Colors.blue,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: IconButton(
                              icon: const Icon(
                                Icons.shopping_cart,
                                size: 24,
                                // color:
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed('/cart');
                                // Navigator.of(context).pushNamed(SearchScreen.routeName);
                              },
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 45,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: customSearchTextField(
                                context: context,
                                onChanged: (value) =>
                                    productManager.search = value,
                                hintText: "Procurar produtos",
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              getPageList(productManager: productManager),
            ],
          ),
        ],
      );
    });
  }
}
