import 'package:instamart/domain/entities/product_entity.dart';
import 'package:instamart/domain/repositories/products_repository.dart';

class GetAllProductsUsecase {
  final ProductsRepository? repository;

  GetAllProductsUsecase(this.repository);

  Future<List<ProductEntity>> call() async {
    return await repository!.getAllProducts();
  }
}