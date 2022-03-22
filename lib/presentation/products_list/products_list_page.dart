import 'package:flutter/material.dart';

import 'widgets/products_list.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instamart'),
      ),
      body: const Center(
        child: ProductsList(),
      ),
    );
  }
}
