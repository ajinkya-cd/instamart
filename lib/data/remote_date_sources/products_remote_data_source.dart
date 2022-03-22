import 'dart:convert';

import 'package:instamart/core/error/exceptions.dart';
import 'package:instamart/data/models/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductsRemoteDataSource {
  Future<List<ProductModel>> getAllProducts();
}

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  @override
  Future<List<ProductModel>> getAllProducts() async {
    return _getProductsFromUrl('https://fakestoreapi.com/products');
  }

  Future<List<ProductModel>> _getProductsFromUrl(String url) async {
    final response = await http.get(Uri.parse(url));

    List<dynamic> jsonResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return Future.value(jsonResponse.map((item) => ProductModel.fromJson(item)).toList());
    } else {
      throw ServerException();
    }
  }
}
