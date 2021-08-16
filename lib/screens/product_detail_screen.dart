import 'package:flutter/material.dart';
import 'package:my_shop/providers/products_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final modalRoute = ModalRoute.of(context);
    if (modalRoute == null) return Text('Failed');
    final String productId = modalRoute.settings.arguments.toString();
    final loadedPorducts = Provider.of<PorductsProvider>(
      context,
      listen: false,
    ).findbyId(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPorducts.title),
      ),
    );
  }
}
