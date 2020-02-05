import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  bool isFavorite;

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  Product(
      {@required this.id,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      @required this.title,
      this.isFavorite = false});
}
