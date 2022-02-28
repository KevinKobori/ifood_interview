import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/models/admin_orders_manager.dart';
import 'package:wlstore/models/admin_users_manager.dart';
import 'package:wlstore/models/cart_manager.dart';
import 'package:wlstore/models/home_manager.dart';
import 'package:wlstore/models/order.dart';
import 'package:wlstore/models/orders_manager.dart';
import 'package:wlstore/models/product.dart';
import 'package:wlstore/models/product_manager.dart';
import 'package:wlstore/models/stores_manager.dart';
import 'package:wlstore/models/user_manager.dart';
import 'package:wlstore/screens/address/address_screen.dart';
import 'package:wlstore/screens/base/base_screen.dart';
import 'package:wlstore/screens/cart/cart_screen.dart';
import 'package:wlstore/screens/checkout/checkout_screen.dart';
import 'package:wlstore/screens/confirmation/confirmation_screen.dart';
import 'package:wlstore/screens/edit_product/edit_product_screen.dart';
import 'package:wlstore/screens/login/login_screen.dart';
import 'package:wlstore/screens/product/product_screen.dart';
import 'package:wlstore/screens/select_product/select_product_screen.dart';
import 'package:wlstore/screens/signup/signup_screen.dart';

import 'i18n/i18n.dart';
import 'models/category_manager.dart';
import 'models/category_model.dart';
import 'screens/admin_orders/admin_orders_screen.dart';
import 'screens/admin_users/admin_users_screen.dart';
import 'screens/category/category_screen.dart';
import 'screens/edit_category/edit_category_screen.dart';
import 'screens/products/products_screen.dart';
import 'screens/stores/stores_screen.dart';
import 'utils/styles/app_theme_data.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserManager(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => ProductManager(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryManager(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => HomeManager(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => StoresManager(),
        ),
        ChangeNotifierProxyProvider<UserManager, CartManager>(
          create: (_) => CartManager(),
          lazy: false,
          update: (_, userManager, cartManager) =>
              cartManager..updateUser(userManager),
        ),
        ChangeNotifierProxyProvider<UserManager, OrdersManager>(
          create: (_) => OrdersManager(),
          lazy: false,
          update: (_, userManager, ordersManager) =>
              ordersManager..updateUser(userManager.userModel),
        ),
        ChangeNotifierProxyProvider<UserManager, AdminUsersManager>(
          create: (_) => AdminUsersManager(),
          lazy: false,
          update: (_, userManager, adminUsersManager) =>
              adminUsersManager..updateUser(userManager),
        ),
        ChangeNotifierProxyProvider<UserManager, AdminOrdersManager>(
          create: (_) => AdminOrdersManager(),
          lazy: false,
          update: (_, userManager, adminOrdersManager) => adminOrdersManager
            ..updateAdmin(adminEnabled: userManager.adminEnabled),
        )
      ],
      child: MaterialApp(
        title: 'WLStore',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
        ],
        // theme: ThemeData(
        //   // scaffoldBackgroundColor: AppColorScheme.grey[50],
        //   // highlightColor: Colors.transparent,
        //   splashColor: Colors.transparent,
        //   // hintColor: Colors.transparent,
        //   // focusColor: Colors.transparent,
        //   // hoverColor: Colors.transparent,
        //   errorColor: AppColorScheme.primarySwatch,
        //   pageTransitionsTheme: PageTransitionsTheme(
        //     builders: {
        //       TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        //       TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        //       TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
        //     },
        //   ),
        //   cardTheme: CardTheme(
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(16.0)),
        //     elevation: 4.0,
        //     shadowColor: AppColorScheme.shadowTealColor,
        //   ),
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //       elevation: 5.0,
        //       shadowColor: AppColorScheme.shadowTealColor,
        //     ),
        //   ),
        // ),
        theme: themeData(),
        // theme: ThemeData(
        //   // primarySwatch: Colors.amber,
        //   // backgroundColor: Colors.amber,
        //   // scaffoldBackgroundColor: Colors.amber,
        //   primaryColor: const Color.fromARGB(255, 4, 125, 141),
        //   scaffoldBackgroundColor: Colors.grey[200],//const Color.fromARGB(255, 4, 125, 141),
        //   appBarTheme: const AppBarTheme(
        //     elevation: 0,
        //     backgroundColor: Color.fromARGB(255, 4, 125, 141),
        //   ),
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        //   colorScheme: ColorScheme.fromSwatch()
        //       .copyWith(secondary: const Color.fromARGB(255, 4, 125, 141)),
        // ),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/stores':
              return MaterialPageRoute(
                builder: (_) => StoresScreen(),
              );
            case '/admin/users':
              return MaterialPageRoute(
                builder: (_) => AdminUsersScreen(),
              );
            case '/admin/orders':
              return MaterialPageRoute(
                builder: (_) => AdminOrdersScreen(),
              );
            case '/login':
              return MaterialPageRoute(
                builder: (_) => LoginScreen(),
              );
            case '/signup':
              return MaterialPageRoute(
                builder: (_) => SignUpScreen(),
              );
            case '/category':
              return MaterialPageRoute(
                builder: (_) =>
                    CategoryScreen(settings.arguments as CategoryModel),
              );
            case '/edit_category':
              return MaterialPageRoute(
                builder: (_) =>
                    EditCategoryScreen(settings.arguments as CategoryModel),
              );
            case '/products':
              return MaterialPageRoute(
                builder: (_) =>
                    ProductsScreen(settings.arguments as CategoryModel),
              );
            case '/product':
              return MaterialPageRoute(
                builder: (_) => ProductScreen(settings.arguments as Product),
              );
            case '/edit_product':
              return MaterialPageRoute(
                builder: (_) => EditProductScreen(
                    settings.arguments as Map<String, dynamic>),
              );
            case '/select_product':
              return MaterialPageRoute(
                builder: (_) => SelectProductScreen(),
              );
            case '/cart':
              return MaterialPageRoute(
                  builder: (_) => CartScreen(), settings: settings);
            case '/address':
              return MaterialPageRoute(
                builder: (_) => AddressScreen(),
              );
            case '/checkout':
              return MaterialPageRoute(
                builder: (_) => CheckoutScreen(),
              );
            case '/confirmation':
              return MaterialPageRoute(
                builder: (_) => ConfirmationScreen(settings.arguments as Order),
              );

            case '/':
            default:
              return MaterialPageRoute(
                  builder: (_) => BaseScreen(), settings: settings);
          }
        },
      ),
    );
  }
}
