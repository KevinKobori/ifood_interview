import 'package:flutter/material.dart';
import 'package:lojavirtual/models/admin_orders_manager.dart';
import 'package:lojavirtual/models/admin_users_manager.dart';
import 'package:lojavirtual/models/cart_manager.dart';
import 'package:lojavirtual/models/home_manager.dart';
import 'package:lojavirtual/models/order.dart';
import 'package:lojavirtual/models/orders_manager.dart';
import 'package:lojavirtual/models/product.dart';
import 'package:lojavirtual/models/product_manager.dart';
import 'package:lojavirtual/models/stores_manager.dart';
import 'package:lojavirtual/models/user_manager.dart';
import 'package:lojavirtual/screens/address/address_screen.dart';
import 'package:lojavirtual/screens/base/base_screen.dart';
import 'package:lojavirtual/screens/cart/cart_screen.dart';
import 'package:lojavirtual/screens/checkout/checkout_screen.dart';
import 'package:lojavirtual/screens/confirmation/confirmation_screen.dart';
import 'package:lojavirtual/screens/edit_product/edit_product_screen.dart';
import 'package:lojavirtual/screens/login/login_screen.dart';
import 'package:lojavirtual/screens/product/product_screen.dart';
import 'package:lojavirtual/screens/select_product/select_product_screen.dart';
import 'package:lojavirtual/screens/signup/signup_screen.dart';
import 'package:provider/provider.dart';
import 'package:correios_frete/correios_frete.dart';

import 'models/category_manager.dart';
import 'models/category_model.dart';
import 'screens/category/category_screen.dart';
import 'screens/edit_category/edit_category_screen.dart';
import 'screens/products/products_screen.dart';

Future<void> main() async {
    final Result resultado = await CalcPriceTerm("0","0","04014","69097374","13480010","1","1","20","20","20",
      "0","N","N","N","xml","3");

  // print("Valor do frete: ${resultado.valor}");
  print("Prazo de Entrega: ${resultado.prazo}");
  // print("Valor da Mão Própria: ${resultado.vmp}");
  // print("Valor do Aviso de Recebimento: ${resultado.valor}");
  // print("Valor do Valor Declarado: ${resultado.vvd}");
  // print("Possui Entrega Domiciliar (S - Sim , N - Não): ${resultado.entrDom}");
  // print("Possui Entrega ao Sábados (S - Sim , N - Não): ${resultado.entrSa}");
  // print("Valor sem Adicionais: ${resultado.vsa}");
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
        title: 'Loja Virtual',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 4, 125, 141),
          accentColor: const Color.fromARGB(255, 4, 125, 141),
          scaffoldBackgroundColor: const Color.fromARGB(255, 4, 125, 141),
          appBarTheme: const AppBarTheme(elevation: 0),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/login':
              return MaterialPageRoute(
                builder: (_) => LoginScreen(),
              );
            case '/signup':
              return MaterialPageRoute(
                builder: (_) => SignUpScreen(),
              );
            case '/product':
              return MaterialPageRoute(
                builder: (_) => ProductScreen(settings.arguments as Product),
              );
            case '/category':
              return MaterialPageRoute(
                builder: (_) =>
                    CategoryScreen(settings.arguments as CategoryModel),
              );
            case '/products':
              return MaterialPageRoute(
                builder: (_) => ProductsScreen(settings.arguments as String),
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
            case '/edit_product':
              return MaterialPageRoute(
                builder: (_) => EditProductScreen(
                    settings.arguments as Map<String, dynamic>),
              );
            case '/edit_category':
              return MaterialPageRoute(
                builder: (_) =>
                    EditCategoryScreen(settings.arguments as CategoryModel),
              );
            case '/select_product':
              return MaterialPageRoute(
                builder: (_) => SelectProductScreen(),
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
