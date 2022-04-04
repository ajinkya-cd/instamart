import 'package:instamart/domain/entities/product_entity.dart';
import 'package:instamart/domain/repositories/cart_repository.dart';

class AddProductToCartUsecase {
  final CartRepository? repository;

  AddProductToCartUsecase(this.repository);

  Future<void> call(ProductEntity product) async {
    return await repository!.addProductToCart(product);
  }
}