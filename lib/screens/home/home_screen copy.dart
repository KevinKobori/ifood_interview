import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/custom_drawer/custom_drawer.dart';
import 'package:wlstore/common/custom_icon_button_2.dart';
import 'package:wlstore/common/custom_search_text_field.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/screens/home/components/add_section_widget.dart';
import 'package:wlstore/utils/styles/app_color_scheme.dart';

import 'components/section_categories_list.dart';
import 'components/section_products_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sliverAppBarHeight = MediaQuery.of(context).size.height * 0.40;
    return Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
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
                shadowColor: AppColorScheme.shadowTealColor, //Color(0xFFFFFFFF),//
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
                  padding: const EdgeInsets.only(
                    left: 32,
                    right: 32,
                  ),
                  // color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      customIconButton(
                        const EdgeInsets.only(left: 0),
                        Icons.data_usage_rounded,
                        () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
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
                      bottom: 84,
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'What are\nyou looking for?',
                        style: GoogleFonts.montserrat(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.25,
                        ),
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
                        // Container(
                        //   height: 67,
                        //   width: MediaQuery.of(context).size.width,
                        //   color: Colors.black,
                        //   padding: EdgeInsets.all(16),
                        //   child: Card(
                        //     elevation: 10,
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(28),
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Text(
                        //         'SEARCH',
                        //         style: TextStyle(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w600,
                        //           color: Colors.green,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.black,
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
                          // padding: const EdgeInsets.only(
                          //   top: 0,
                          //   left: 16,
                          //   right: 16,
                          //   bottom: 8,
                          // ),

                          child: customSearchTextField(
                            context: context,
                            // onChanged: (value) => cartManager.search = value,
                            hintText: "Search product",
                          ),

                          // const Padding(
                          //   padding: EdgeInsets.all(8.0),
                          //   child: Text(
                          //     'SEARCH',
                          //     style: TextStyle(
                          //       fontSize: 20,
                          //       fontWeight: FontWeight.w600,
                          //       color: Colors.black,
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Consumer<HomeManager>(
                builder: (_, homeManager, __) {
                  if (homeManager.loading) {
                    return const SliverToBoxAdapter(
                      child: LinearProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                        backgroundColor: Colors.transparent,
                      ),
                    );
                  }

                  final List<Widget> children =
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

                  if (homeManager.editing)
                    children.add(AddSectionWidget(homeManager));

                  return SliverList(
                    delegate: SliverChildListDelegate(children),
                  );
                },
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 1000)),
            ],
          ),
        ],
      ),
    );
  }
}
