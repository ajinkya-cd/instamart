// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector_config.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$InjectorConfig extends InjectorConfig {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory(
          (c) => ProductsListBloc(getAllProducts: c<GetAllProducts>()))
      ..registerFactory((c) => GetAllProducts(c<ProductsRepository>()))
      ..registerFactory<ProductsRepository>((c) => ProductsRepositoryImpl(
          remoteDataSource: c<ProductsRemoteDataSource>()))
      ..registerFactory<ProductsRemoteDataSource>(
          (c) => ProductsRemoteDataSourceImpl());
  }
}
