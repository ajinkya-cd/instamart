import 'package:instamart/domain/entities/product_entity.dart';

abstract class ProductsRepository {
  Future<List<ProductEntity>> getAllProducts();
}
