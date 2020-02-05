import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  static String routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    var productId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
