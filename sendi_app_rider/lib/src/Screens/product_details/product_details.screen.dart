import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  //const ProductDetailsScreen({Key? key}) : super(key: key);

  static const String routeName = '/product-details';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => ProductDetailsScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProductDetails Screen"),
      ),
      body: Center(
        child: Text("ProductDetails Form"),
      ),
    );
  }
}
