import 'package:flutter/material.dart';
import 'package:shop/providers/product.dart';
import 'package:shop/utils/productRepository.dart';

class Products with ChangeNotifier {
  List<Product> _items = ProductsRepository.getProducts();

  bool _showFavoritesOnly = false;

  List<Product> get items {
    if (_showFavoritesOnly) {
      return _items.where((item) => item.isFavorite).toList();
    }
    return [..._items];
  }

  void showFavoritesOnly() {
    _showFavoritesOnly = true;
    notifyListeners();
  }

  void showAllProducts() {
    _showFavoritesOnly = false;
    notifyListeners();
  }

  void addProduct(Product itemToAdd) {
    items.add(itemToAdd);
    notifyListeners();
  }

  void removeProduct(String productId) {
    items.removeWhere((item) => item.id == productId);
    notifyListeners();
  }

  Product finById(String id) {
    return _items.firstWhere((x) => x.id == id);
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}
