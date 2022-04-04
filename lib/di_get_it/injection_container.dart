import 'package:get_it/get_it.dart';
import 'package:instamart/data/remote_date_sources/products_remote_data_source.dart';
import 'package:instamart/data/repositories/products_repository_impl.dart';
import 'package:instamart/domain/repositories/products_repository.dart';
import 'package:instamart/domain/usecases/get_all_products.dart';
import 'package:instamart/presentation/products_list/bloc/products_list_bloc.dart';

final sl = GetIt.instance;

Future<void> initInjector() async {
  // Bloc
  sl.registerFactory<ProductsListBloc>(
        () => ProductsListBloc(getAllProducts: sl(), addProductToCartUsecase: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GetAllProducts(sl()));

  // Repository
  sl.registerLazySingleton<ProductsRepository>(
        () => ProductsRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<ProductsRemoteDataSource>(
        () => ProductsRemoteDataSourceImpl(),
  );
}