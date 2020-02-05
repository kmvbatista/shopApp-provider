import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
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
}
