import 'dart:convert';

import 'package:instamart/core/error/exceptions.dart';
import 'package:instamart/data/models/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductsRemoteDataSource {
  Future<ProductModel> getAllProducts();
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  @override
  Future<ProductModel> getAllProducts() async {
    return _getProductsFromUrl('https://fakestoreapi.com/products');
  }

  Future<ProductModel> _getProductsFromUrl(String url) async {
    var client = http.Client();

    final response = await client.get(
      Uri(path: url),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return Future.value(ProductModel.fromJson(jsonDecode(response.body)));
    } else {
      throw ServerException();
    }
  }
}
