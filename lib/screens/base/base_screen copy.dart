import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wlstore/models/page_manager.dart';
import 'package:wlstore/models/user_manager.dart';
import 'package:wlstore/screens/admin_orders/admin_orders_screen.dart';
import 'package:wlstore/screens/admin_users/admin_users_screen.dart';
import 'package:wlstore/screens/categories/categories_screen.dart';
import 'package:wlstore/screens/home/home_screen.dart';
import 'package:wlstore/screens/orders/orders_screen.dart';
import 'package:wlstore/screens/products/products_screen.dart';
import 'package:wlstore/screens/stores/stores_screen.dart';
import 'package:provider/provider.dart';
import "package:flutter/material.dart";
import "dart:ui";
import "package:flutter_card_swipper/flutter_card_swiper.dart";

import "package:flutter_svg/flutter_svg.dart";
import "package:flutter_neumorphic/flutter_neumorphic.dart";
import "package:visibility_detector/visibility_detector.dart";
import 'package:wlstore/utils/styles/app_color_scheme.dart';

import "package:wlstore/utils/styles/constants.dart";

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  var indexPage = 0;
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    configFCM();
  }

  void configFCM() {
    final fcm = FirebaseMessaging();

    if (Platform.isIOS) {
      fcm.requestNotificationPermissions(
          const IosNotificationSettings(provisional: true));
    }

    fcm.configure(
        onLaunch: (Map<String, dynamic> message) async {},
        onResume: (Map<String, dynamic> message) async {},
        onMessage: (Map<String, dynamic> message) async {
          showNotification(
            message['notification']['title'] as String,
            message['notification']['body'] as String,
          );
        });
  }

  void showNotification(String title, String message) {
    Flushbar(
      title: title,
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.GROUNDED,
      isDismissible: true,
      backgroundColor: Theme.of(context).primaryColor,
      duration: const Duration(seconds: 5),
      icon: const Icon(
        Icons.shopping_cart,
        // color: Colors.white,
      ),
    ).show(context);
  }

  BottomNavigationBarItem getBottomNavigationBarItem(
      int index, String title, IconData icon) {
    return BottomNavigationBarItem(
      // backgroundColor: darkGrey,
      icon: indexPage == index
          ? Padding(
              padding: EdgeInsets.fromLTRB(
                index == 0 ? 16 : 0,
                0,
                index == 3 ? 16 : 0,
                0,
              ),
              child: 
              Container(
                // decoration: BoxDecoration(
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black.withOpacity(0.2),
                //       spreadRadius: 6,
                //       blurRadius: 10,
                //       offset: const Offset(0, 3),
                //     ),
                //   ],
                //   borderRadius: BorderRadius.circular(16),
                //   gradient: LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //     colors: [
                //       AppColorScheme.primarySwatch,
                //       AppColorScheme.primarySwatch[300],
                //     ],
                //   ),
                // ),
                height: 42,
                width: 106,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                        // color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Icon(
              icon,
              size: 24,
              color: indexPage == index ?  AppColorScheme.enabledTealColor : AppColorScheme.disabledTealColor,
              // color: Colors.white,
            ), //,
      label: title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: Consumer<UserManager>(
        builder: (_, userManager, __) {
          return Scaffold(
            body: Stack(
              children: <Widget>[
                PageView(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    HomeScreen(),
                    CategoriesScreen(),
                    const ProductsScreen(null),
                    OrdersScreen(),
                    StoresScreen(),
                    if (userManager.adminEnabled) ...[
                      AdminUsersScreen(),
                      AdminOrdersScreen(),
                    ]
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0),
                          Theme.of(context).scaffoldBackgroundColor,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: 
              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(26),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey[900].withOpacity(0.2),
              //         spreadRadius: 6,
              //         blurRadius: 12,
              //         offset: const Offset(0, 7),
              //       ),
              //     ],
              //   ),
              //   child: 
                ClipRRect(
                  borderRadius: BorderRadius.circular(26),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    elevation: 0,
                    items: [
                      getBottomNavigationBarItem(
                        0,
                        'Home',
                        Icons.home_filled,
                      ),
                      getBottomNavigationBarItem(
                        1,
                        'Categories',
                        Icons.storefront_outlined,
                      ),
                      getBottomNavigationBarItem(
                        2,
                        'Products',
                        Icons.widgets_rounded,
                      ),
                      getBottomNavigationBarItem(
                        3,
                        'Orders',
                        Icons.view_in_ar_outlined,
                      ),
                    ],
                    currentIndex: indexPage,
                    onTap: (newIndex) {
                      setState(() {
                        indexPage = newIndex;
                        pageController.jumpToPage(newIndex);
                      });
                    },
                  ),
                ),
              ),
            // ),
          );
        },
      ),
    );
  }
}
