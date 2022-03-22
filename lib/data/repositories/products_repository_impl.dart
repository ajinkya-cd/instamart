import 'package:instamart/data/remote_date_sources/products_remote_data_source.dart';
import 'package:instamart/domain/entities/product_entity.dart';
import 'package:instamart/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  final ProductsRemoteDataSource remoteDataSource;

  ProductsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProductEntity>> getAllProducts() {
    return remoteDataSource.getAllProducts();
  }
}
