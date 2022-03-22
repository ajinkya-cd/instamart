import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instamart/core/error/exceptions.dart';
import 'package:instamart/domain/entities/product_entity.dart';
import 'package:instamart/domain/usecases/get_all_products.dart';

part 'products_list_event.dart';

part 'products_list_state.dart';

class ProductsListBloc extends Bloc<ProductsListEvent, ProductsListState> {
  final GetAllProducts getAllProducts;

  ProductsListBloc({required this.getAllProducts})
      : super(ProductsListInitial()) {
    on<GetAllProductsEvent>((event, emit) async {
      emit(Loading());
      try {
        final productsList = await getAllProducts();
        emit(Loaded(productsList: productsList));
      } on ServerException {
        emit(const Error(errorMessage: 'Server exception'));
      }
    });
  }
}
