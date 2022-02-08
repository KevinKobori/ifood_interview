// import 'package:cielo_payment_link/payment_link.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:lojavirtual/common/custom_drawer/custom_drawer.dart';
// import 'package:lojavirtual/models/home_manager.dart';
// import 'package:lojavirtual/models/user_manager.dart';
// import 'package:lojavirtual/screens/home/components/add_section_widget.dart';
// import 'package:lojavirtual/screens/home/components/section_list.dart';
// import 'package:lojavirtual/screens/home/components/section_staggered.dart';
// import 'package:provider/provider.dart';

// class HomeScreen extends StatelessWidget {
//   Future<ErrorResponse> getPaymentLinkResponse() async {
//     final paymentLink = PaymentLink(
//         clientId: '30cdfad2-3fbb-442a-9c76-e440ee67d6e2',
//         clientSecret: 'OSKVVKHHQYLMSQUKYRWLFQEWHFMIBMTGEHNEUJHD',
//         environment: PaymentLinkEnvironment.SANDBOX);

//     final request = PaymentLinkRequest(
//       name: 'yourproductname',
//       type: TypeProduct.ASSET,
//       price: '2',
//       description: 'descriptionofyourproduct',
//       maxNumberOfInstallments: '1',
//       expirationDate: '2025-01-01',
//       quantity: 2,
//       shipping: ShippingProduct(
//         type: ShippingType.CORREIOS,
//         name: 'deliveryname',
//         price: '1',
//         originZipcode: '71650075',
//       ),
//     );
//     ErrorResponse errorResponse;
//     PaymentLinkResponse response;
//     try {
//       response =
//           await paymentLink.create(request: request).then((element) async {
//         print('AAATESTE: >>> ' + element.price.toString());
//       });
//       // asyncSnapshot. = null;
//       // return response;
//     } on ErrorResponse catch (e) {
//       print('BBBTESTE: >>> ' + e.code.toString());
//       return errorResponse;
//     }
//   }

//   // PaymentLinkResponse value = await getPaymentLinkResponse();
//   // print('AAATESTE: >>> ' + value.name);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: CustomDrawer(),
//         body: FutureBuilder(
//           future: getPaymentLinkResponse(),
//           builder: (ctx, AsyncSnapshot snapshot) {
//             // if (snapshot.hasError) {
//             //   ErrorResponse errors = snapshot.data;
//             //   print('--------------------------------------');
//             //   print('Status Code => ${errors.code}');
//             //   print('Message => ${errors.message}');
//             //   print('--------------------------------------');
//             //   return Container(color: Colors.pink);
//             // } else if (snapshot.hasData) {
//             //   return Container(color: Colors.blue);
//             // } else {
//            print('CCCTESTE: >>> ' + snapshot.data.code.toString());
//             return Container(color: Colors.green);
//             // }
//           },
//         )

//         // Stack(
//         //   children: <Widget>[
//         //     Container(
//         //       decoration: BoxDecoration(
//         //           gradient: LinearGradient(colors: const [
//         //         Color.fromARGB(255, 211, 118, 130),
//         //         Color.fromARGB(255, 253, 181, 168)
//         //       ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//         //     ),
//         //     CustomScrollView(
//         //       slivers: <Widget>[
//         //         SliverAppBar(
//         //           snap: true,
//         //           floating: true,
//         //           elevation: 0,
//         //           backgroundColor: Colors.transparent,
//         //           flexibleSpace: const FlexibleSpaceBar(
//         //             title: Text('Loja Virtual'),
//         //             centerTitle: true,
//         //           ),
//         //           actions: <Widget>[
//         //             IconButton(
//         //               icon: Icon(Icons.shopping_cart),
//         //               color: Colors.white,
//         //               onPressed: () => Navigator.of(context).pushNamed('/cart'),
//         //             ),
//         //             Consumer2<UserManager, HomeManager>(
//         //               builder: (_, userManager, homeManager, __) {
//         //                 if (userManager.adminEnabled && !homeManager.loading) {
//         //                   if (homeManager.editing) {
//         //                     return PopupMenuButton(
//         //                       onSelected: (e) {
//         //                         if (e == 'Salvar') {
//         //                           homeManager.saveEditing();
//         //                         } else {
//         //                           homeManager.discardEditing();
//         //                         }
//         //                       },
//         //                       itemBuilder: (_) {
//         //                         return ['Salvar', 'Descartar'].map((e) {
//         //                           return PopupMenuItem(
//         //                             value: e,
//         //                             child: Text(e),
//         //                           );
//         //                         }).toList();
//         //                       },
//         //                     );
//         //                   } else {
//         //                     return IconButton(
//         //                       icon: Icon(Icons.edit),
//         //                       onPressed: homeManager.enterEditing,
//         //                     );
//         //                   }
//         //                 } else
//         //                   return Container();
//         //               },
//         //             ),
//         //           ],
//         //         ),
//         //         Consumer<HomeManager>(
//         //           builder: (_, homeManager, __) {
//         //             if (homeManager.loading) {
//         //               return SliverToBoxAdapter(
//         //                 child: LinearProgressIndicator(
//         //                   valueColor: AlwaysStoppedAnimation(Colors.white),
//         //                   backgroundColor: Colors.transparent,
//         //                 ),
//         //               );
//         //             }

//         //             final List<Widget> children =
//         //                 homeManager.sections.map<Widget>((section) {
//         //               switch (section.type) {
//         //                 case 'List':
//         //                   return SectionList(section);
//         //                 case 'Staggered':
//         //                   return SectionStaggered(section);
//         //                 default:
//         //                   return Container();
//         //               }
//         //             }).toList();

//         //             if (homeManager.editing)
//         //               children.add(AddSectionWidget(homeManager));

//         //             return SliverList(
//         //               delegate: SliverChildListDelegate(children),
//         //             );
//         //           },
//         //         )
//         //       ],
//         //     ),
//         //   ],
//         // ),
//         );
//   }
// }
