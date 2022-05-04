import 'package:instamart/data/local_data_sources/cart_local_data_source.dart';
import 'package:instamart/data/remote_date_sources/user_remote_data_source.dart';
import 'package:instamart/data/repositories/cart_repository_impl.dart';
import 'package:instamart/data/repositories/products_repository_impl.dart';
import 'package:instamart/data/repositories/user_repository_impl.dart';
import 'package:instamart/domain/repositories/cart_repository.dart';
import 'package:instamart/domain/repositories/user_repository.dart';
import 'package:instamart/domain/usecases/add_product_to_cart.dart';
import 'package:instamart/domain/usecases/get_user_usecase.dart';
import 'package:instamart/presentation/products_list/bloc/products_list_bloc.dart';
import 'package:kiwi/kiwi.dart';

import '../core/local_preferences/local_preferences.dart';
import '../data/remote_date_sources/products_remote_data_source.dart';
import '../domain/repositories/products_repository.dart';
import '../domain/usecases/get_all_products.dart';

part 'injector_config.g.dart';

abstract class InjectorConfig {
  static KiwiContainer? container;

  static void setup() {
    container = KiwiContainer();
    _$InjectorConfig()._configure();
  }

  static final resolve = container!.resolve;

  @Register.factory(ProductsListBloc)

  // Usercases
  @Register.factory(GetAllProductsUsecase)
  @Register.factory(AddProductToCartUsecase)
  @Register.factory(GetUserUsecase)

  // Repositories
  @Register.factory(ProductsRepository, from: ProductsRepositoryImpl)
  @Register.factory(CartRepository, from: CartRepositoryImpl)
  @Register.factory(UserRepository, from: UserRepositoryImpl)

  // Datesources
  @Register.factory(ProductsRemoteDataSource, from: ProductsRemoteDataSourceImpl)
  @Register.factory(CartLocalDaraSource, from: CartLocalDaraSourceImpl)
  @Register.singleton(LocalPreferences)
  @Register.factory(UserRemoteDataSource, from: UserRemoteDataSourceImpl)
  void _configure();
}