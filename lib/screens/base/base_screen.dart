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
        color: Colors.white,
      ),
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: Consumer<UserManager>(
        builder: (_, userManager, __) {
          return Scaffold(
            body: PageView(
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
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Card(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20.0),
                // ),
                // BorderRadius.circular(16),
                // style: NeumorphicStyle(
                //   shape: NeumorphicShape.convex,
                //   color: Colors.transparent,
                //   depth: 3,
                //   intensity: 0.4,
                //   lightSource: LightSource.topLeft,
                //   shadowLightColor: Colors.white.withOpacity(0.4),
                //   shadowDarkColor: Colors.black,
                // ),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  elevation: 0,
                  items: [
                    BottomNavigationBarItem(
                      backgroundColor: color5,
                      icon: indexPage == 0
                          ? Padding(
                              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 6,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      color3,
                                      color4,
                                    ],
                                  ),
                                ),
                                height: 40,
                                width: 106,
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                    child: Text(
                                      "Home",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : const Icon(Icons.home_filled,
                              size: 24, color: Colors.white),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: color6,
                      icon: indexPage == 1
                          ? Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 6,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      color3,
                                      color4,
                                    ],
                                  ),
                                ),
                                height: 40,
                                width: 106,
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                    child: Text(
                                      "Categories",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : const Icon(Icons.grid_view_rounded,
                              size: 24, color: Colors.white),
                      label: "Categories",
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: color7,
                      icon: indexPage == 2
                          ? Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 6,
                                        blurRadius: 10,
                                        offset: Offset(0, 3)),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      color3,
                                      color4,
                                    ],
                                  ),
                                ),
                                height: 40,
                                width: 106,
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                    child: Text(
                                      "Products",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Icon(Icons.view_in_ar_outlined,
                              size: 24, color: Colors.white), //window_rounded
                      label: "Products",
                    ),
                    BottomNavigationBarItem(
                      backgroundColor: color8,
                      icon: indexPage == 3
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 6,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      color3,
                                      color4,
                                    ],
                                  ),
                                ),
                                height: 40,
                                width: 106,
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                    child: Text(
                                      "Stores",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Icon(Icons.menu, size: 24, color: Colors.white),
                      label: "Stores",
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
          );
        },
      ),
    );
  }
}
