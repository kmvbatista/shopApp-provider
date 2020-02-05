import 'package:flutter/material.dart';
import 'package:shop/pages/product_detail.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => Products(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.orange,
            fontFamily: 'Lato'),
        routes: {ProductDetail.routeName: (ctx) => ProductDetail()},
      ),
    );
  }
}
