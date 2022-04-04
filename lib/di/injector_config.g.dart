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
      ..registerFactory((c) => ProductsListBloc(
          getAllProducts: c<GetAllProducts>(),
          addProductToCartUsecase: c<AddProductToCartUsecase>()))
      ..registerFactory((c) => GetAllProducts(c<ProductsRepository>()))
      ..registerFactory((c) => AddProductToCartUsecase(c<CartRepository>()))
      ..registerFactory<ProductsRepository>((c) => ProductsRepositoryImpl(
          remoteDataSource: c<ProductsRemoteDataSource>()))
      ..registerFactory<CartRepository>((c) =>
          CartRepositoryImpl(cartLocalDaraSource: c<CartLocalDaraSource>()))
      ..registerFactory<ProductsRemoteDataSource>(
          (c) => ProductsRemoteDataSourceImpl())
      ..registerFactory<CartLocalDaraSource>((c) =>
          CartLocalDaraSourceImpl(localPreferences: c<LocalPreferences>()))
      ..registerSingleton((c) => LocalPreferences());
  }
}
