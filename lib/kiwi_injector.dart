import 'package:instamart/data/repositories/products_repository_impl.dart';
import 'package:instamart/presentation/products_list/bloc/products_list_bloc.dart';
import 'package:kiwi/kiwi.dart';

import 'data/remote_date_sources/products_remote_data_source.dart';
import 'domain/repositories/products_repository.dart';
import 'domain/usecases/get_all_products.dart';

part 'kiwi_injector.g.dart';

abstract class KiwiInjector {
  static KiwiContainer? container;

  static void setup() {
    container = KiwiContainer();
    _$KiwiInjector()._configure();
  }

  static final resolve = container!.resolve;

  @Register.factory(ProductsListBloc)
  @Register.factory(GetAllProducts)
  @Register.factory(ProductsRepository, from: ProductsRepositoryImpl)
  @Register.factory(ProductsRemoteDataSource, from: ProductsRemoteDataSourceImpl)
  void _configure();
}