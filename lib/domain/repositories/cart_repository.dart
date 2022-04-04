import 'package:instamart/domain/entities/product_entity.dart';

abstract class CartRepository {
  Future<void> addProductToCart(ProductEntity product);
}
