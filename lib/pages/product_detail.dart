import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/products.dart';

class ProductDetail extends StatelessWidget {
  static String routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    var productId = ModalRoute.of(context).settings.arguments as String;
    var product =
        Provider.of<Products>(context, listen: false).finById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
