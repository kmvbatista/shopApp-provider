import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductsOverview extends StatelessWidget {
  List<Product> productsLoaded;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: productsLoaded.length,
          itemBuilder: (ctx, i) => Container(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10)),
    );
  }
}
