import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_card_swipper/flutter_card_swiper.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/models/category_manager.dart';
import 'package:wlstore/models/category_model.dart';
import 'package:wlstore/models/user_manager.dart';

// import '../../../models/companies/company_manager.dart';

class CategoryGridItem extends StatefulWidget {
  final CategoryModel categoryModel;
  final String pageType;
  const CategoryGridItem(this.categoryModel, this.pageType);

  @override
  _CompanyGridItemState createState() => _CompanyGridItemState();
}

class _CompanyGridItemState extends State<CategoryGridItem> {
  DateTime loginClickTime;
  @override
  Widget build(BuildContext context) {
    // final CategoryModel companyProvider = Provider.of(context, listen: false);
    // companyProvider.setCompany(widget.categoryModel);
    // final CompanyManager companyManager = Provider.of(context, listen: false);
    // final CategoryModel categoryModel = Provider.of(context, listen: false);
    return Consumer<UserManager>(
      builder: (_, userManager, __) {
        return GestureDetector(
          onTap:
              // isRedundentClick(
              //   DateTime.now(),
              //   loginClickTime,
              //   (val) {
              //     loginClickTime = val;
              //   },
              // )
              //     ? null
              //     :
              () async {
            context
                .read<CategoryManager>()
                .setCategory(category: widget.categoryModel);
            Navigator.of(context)
                .pushNamed('/products', arguments: widget.categoryModel);
            // categoryModel.setCompany(widget.categoryModel);
            //  companyManager.filteredCompanies;

            // final CategoryManager categoryManager =
            //     Provider.of(context, listen: false);
            // await categoryManager
            //     .loadCompanyCategories(widget.categoryModel.id);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => CompanyCategoriesScreen(),
            //   ),
            // );
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(6.0, 0.0, 6.0, 6.0),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child:
                      //  Swiper(
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return
                      Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          color: Colors.grey[100],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image.network(
                            widget.categoryModel.images.first,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // },
                  // itemCount: widget.categoryModel.images.length, //10,
                  // viewportFraction: 1,
                  // scale: 0.9,
                  // // autoplay: true,
                  // pagination: widget.categoryModel.images.length <= 1
                  //     ? null
                  //     : SwiperPagination(
                  //         margin: EdgeInsets.all(0.0),
                  //         builder: SwiperCustomPagination(
                  //           builder: (BuildContext context,
                  //               SwiperPluginConfig config) {
                  //             return ConstrainedBox(
                  //               constraints:
                  //                   BoxConstraints.expand(height: 20.0),
                  //               child: Center(
                  //                 child: DotSwiperPaginationBuilder(
                  //                         color: Theme.of(context)
                  //                             .accentColor
                  //                             .withOpacity(0.4),
                  //                         activeColor:
                  //                             Theme.of(context).primaryColor,
                  //                         size: 8.0,
                  //                         activeSize: 8.0)
                  //                     .build(context, config),
                  //               ),
                  //             );
                  //           },
                  //         ),
                  //       ),
                  // ),
                ),
                // const SizedBox(
                //   height: 4,
                // ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 5.0), // bottom: 15), //24.0),
                      child: LayoutBuilder(
                        builder: (context, size) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              const SizedBox(height: 4),
                              Text(
                                widget.categoryModel.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: 4,
                      right: 4,
                      child:
                          userManager.adminEnabled //userManager.isLoggedIn &&
                              ? SizedBox(
                                  height: 18.0,
                                  width: 18.0,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                        '/edit_category',
                                        arguments: widget.categoryModel,
                                      );
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (_) => EditCompanyScreen(
                                      //           widget.categoryModel)),
                                      // );
                                    },
                                    padding: const EdgeInsets.all(0.0),
                                    icon: const Icon(
                                      Icons.edit,
                                      size: 16,
                                      // color: Colors.grey,
                                    ),
                                  ),
                                )
                              : Container(),
                      // SizedBox(
                      //     height: 18.0,
                      //     width: 18.0,
                      //     child: IconButton(
                      //       onPressed: () {},
                      //       padding: const EdgeInsets.all(0.0),
                      //       icon: SvgPicture.asset(
                      //         'assets/icons/Heart Icon.svg',
                      //         semanticsLabel: 'Perfil',
                      //         height: 18,
                      //       ),
                      //     ),
                      //   ),
                    ),
                  ],
                ),
                // const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
