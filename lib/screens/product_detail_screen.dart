import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; // as id
   // final loadedProduct = Provider.of<Products>(context).items.firstWhere((element) => element.id == productId);
  //  final loadedProduct = Provider.of<Products>(context).findById(productId);
  final loadedProduct = Provider.of<Products>(context, listen: false).findById(productId); //when products change do not run build method of this class again
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
