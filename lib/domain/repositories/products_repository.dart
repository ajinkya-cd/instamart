import 'package:instamart/data/models/product_model.dart';

abstract class ProductsRepository {
  Future<ProductModel> getAllProducts();
}
