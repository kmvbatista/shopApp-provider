import 'package:flutter/material.dart';
import 'package:shop/providers/product.dart';
import 'package:shop/utils/productRepository.dart';

class Products with ChangeNotifier {
  List<Product> _items = ProductsRepository.getProducts();

  List<Product> get items {
    return [..._items];
  }

  void addProduct(Product itemToAdd) {
    items.add(itemToAdd);
    notifyListeners();
  }

  Product finById(String id) {
    return _items.firstWhere((x) => x.id == id);
  }
}
