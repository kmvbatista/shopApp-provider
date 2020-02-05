import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  void addProduct(Product itemToAdd) {
    items.add(itemToAdd);
    notifyListeners();
  }
}
