import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instamart/core/error/exceptions.dart';
import 'package:instamart/data/models/product_model.dart';
import 'package:instamart/domain/entities/product_entity.dart';
import 'package:instamart/domain/usecases/add_product_to_cart.dart';
import 'package:instamart/domain/usecases/get_all_products.dart';

part 'products_list_event.dart';

part 'products_list_state.dart';

class ProductsListBloc extends Bloc<ProductsListEvent, ProductsListState> {
  final GetAllProductsUsecase getAllProducts;
  final AddProductToCartUsecase addProductToCartUsecase;

  ProductsListBloc({required this.getAllProducts, required this.addProductToCartUsecase})
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

    on<AddProductToCartEvent>((event, emit) async {
      await addProductToCartUsecase(event.product);
    });
  }
}
