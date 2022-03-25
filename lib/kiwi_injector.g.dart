// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kiwi_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$KiwiInjector extends KiwiInjector {
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
