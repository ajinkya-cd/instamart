part of 'products_list_bloc.dart';

abstract class ProductsListState extends Equatable {
  const ProductsListState();
}

class ProductsListInitial extends ProductsListState {
  @override
  List<Object> get props => [];
}

class Loading extends ProductsListState {
  @override
  List<Object?> get props => [];
}

class Loaded extends ProductsListState {
  final List<ProductEntity> productsList;

  const Loaded({required this.productsList});

  @override
  List<Object?> get props => [productsList];
}

class Error extends ProductsListState {
  final String errorMessage;

  const Error({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
