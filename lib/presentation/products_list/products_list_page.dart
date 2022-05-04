import 'package:flutter/material.dart';
import 'package:instamart/presentation/products_list/widgets/products_list.dart';
import 'package:instamart/presentation/user/user_details_page.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instamart'),
      ),
      body: const Center(
        // child: ProductsList(),
        child: UserDetailsPage(),
      ),
    );
  }
}