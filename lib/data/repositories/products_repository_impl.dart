import 'package:instamart/data/models/product_model.dart';
import 'package:instamart/data/remote_date_sources/products_remote_data_source.dart';
import 'package:instamart/domain/repositories/products_repository.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  final ProductsRemoteDataSource remoteDataSource;

  ProductsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<ProductModel> getAllProducts() {
    return remoteDataSource.getAllProducts();
  }
}
