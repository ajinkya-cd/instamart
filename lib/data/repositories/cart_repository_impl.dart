import 'package:instamart/data/local_data_sources/cart_local_data_source.dart';
import 'package:instamart/data/models/product_model.dart';
import 'package:instamart/domain/entities/product_entity.dart';
import 'package:instamart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl extends CartRepository {
  final CartLocalDaraSource cartLocalDaraSource;

  CartRepositoryImpl({required this.cartLocalDaraSource});

  @override
  Future<void> addProductToCart(ProductEntity product) async {
    await cartLocalDaraSource.addProductToCart(product as ProductModel);
  }

}
