import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wlstore/common/custom_drawer/custom_drawer.dart';
import 'package:wlstore/common/search_dialog.dart';
import 'package:wlstore/models/category_model.dart';
// import 'package:wlstore/models/category_manager.dart';
import 'package:wlstore/models/product_manager.dart';
import 'package:wlstore/models/user_manager.dart';
import 'package:wlstore/screens/products/components/product_list_tile.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen(
    this.category,
    // @required this.categoryName,
  );

  final CategoryModel category;
  // final String categoryName;
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final PageController pageController = PageController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final ProductManager productManager = Provider.of(context, listen: false);
    if (widget.category != null) {
      productManager.loadAllCategoryProducts(widget.category.id);
    } else {
      productManager.loadAllProducts();
    }
  }

  @override
  Widget build(BuildContext context) {
    // final userManager = context.watch<UserManager>();
    return Scaffold(
      drawer: widget.category == null ? CustomDrawer() : null,
      appBar: AppBar(
        title: Consumer<ProductManager>(
          builder: (_, productManager, __) {
            if (productManager.search.isEmpty && widget.category == null) {
              return const Text('Products');
            } else 
            if (widget.category != null) {
              return Text(widget.category.name);
            } else {
              return LayoutBuilder(
                builder: (_, constraints) {
                  return GestureDetector(
                    onTap: () async {
                      final search = await showDialog<String>(
                          context: context,
                          builder: (_) => SearchDialog(productManager.search));
                      if (search != null) {
                        productManager.search = search;
                      }
                    },
                    child: Container(
                      width: constraints.biggest.width,
                      child: Text(
                        productManager.search,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
        centerTitle: true,
        actions: <Widget>[
          Consumer<ProductManager>(
            builder: (_, productManager, __) {
              if (productManager.search.isEmpty) {
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () async {
                    final search = await showDialog<String>(
                        context: context,
                        builder: (_) => SearchDialog(productManager.search));
                    if (search != null) {
                      productManager.search = search;
                    }
                  },
                );
              } else {
                return IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () async {
                    productManager.search = '';
                  },
                );
              }
            },
          ),
          Consumer<UserManager>(
            builder: (_, userManager, __) {
              if (userManager.adminEnabled && widget.category != null) {
                return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/edit_product',
                      arguments: {
                        'category': widget.category,
                        // 'product': product
                      },
                    );
                  },
                );
              } else {
                return Container();
              }
            },
          )
        ],
      ),
      body: Consumer<ProductManager>(
        builder: (_, productManager, __) {
          if (widget.category != null) {
            final filteredCategoryProducts =
                productManager.filteredCategoryProducts;
            return ListView.builder(
              itemCount: filteredCategoryProducts.length,
              itemBuilder: (_, index) {
                return ProductListTile(
                  filteredCategoryProducts[index],
                  widget.category.id,
                );
              },
            );
          } else {
            final filteredProducts = productManager.filteredProducts;
            return ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (_, index) {
                return ProductListTile(
                  filteredProducts[index],
                  null,
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.of(context).pushNamed('/cart');
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
