import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:lojavirtual/models/product.dart';

class ProductManager extends ChangeNotifier {
  ProductManager() {
    loadAllProducts();
  }

  final Firestore firestore = Firestore.instance;

  List<Product> allCategoryProducts = [];

  List<Product> allProducts = [];

  String _search = '';

  String get search => _search;
  set search(String value) {
    _search = value;
    notifyListeners();
  }

  List<Product> get filteredProducts {
    final List<Product> filteredProducts = [];

    if (search.isEmpty) {
      filteredProducts.addAll(allCategoryProducts);
    } else {
      filteredProducts.addAll(allCategoryProducts
          .where((p) => p.name.toLowerCase().contains(search.toLowerCase())));
    }

    return filteredProducts;
  }

  Future<void> loadAllCategoryProducts(String categoryId) async {
    final QuerySnapshot getProducts = await firestore
        .collection('categories')
        .document(categoryId)
        .collection('products')
        .where('deleted', isEqualTo: false)
        .getDocuments();

    allCategoryProducts =
        getProducts.documents.map((d) => Product.fromDocument(d)).toList();

    notifyListeners();
  }

  Product findCategoryProductById(String id) {
    try {
      return allCategoryProducts.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }

  void updateCategoryProduct(Product product) {
    allCategoryProducts.removeWhere((p) => p.id == product.id);
    allCategoryProducts.add(product);
    updateProductsProduct(product);
    notifyListeners();
  }

  void deleteCategoryProduct(Product product, String categoryId) {
    product.deleteCategoryProduct(categoryId);
    allCategoryProducts.removeWhere((p) => p.id == product.id);
    deleteProductsProduct(product);
    notifyListeners();
  }

  //______________________________________
  Future<void> loadAllProducts() async {
    final QuerySnapshot getProducts = await firestore
        .collection('products')
        .where('deleted', isEqualTo: false)
        .getDocuments();

    allProducts =
        getProducts.documents.map((d) => Product.fromDocument(d)).toList();

    notifyListeners();
  }

  Product findProductById(String id) {
    try {
      return allProducts.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }

  void updateProductsProduct(Product product) {
    allProducts.removeWhere((p) => p.id == product.id);
    allProducts.add(product);
    notifyListeners();
  }

  void deleteProductsProduct(Product product) {
    allProducts.removeWhere((p) => p.id == product.id);
    notifyListeners();
  }

  //______________________________________

}
