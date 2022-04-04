part of 'products_list_bloc.dart';

abstract class ProductsListEvent extends Equatable {
  const ProductsListEvent();
}

class GetAllProductsEvent extends ProductsListEvent {
  const GetAllProductsEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AddProductToCartEvent extends ProductsListEvent {
  final ProductEntity product;

  const AddProductToCartEvent({required this.product});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
