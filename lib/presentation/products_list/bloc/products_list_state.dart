part of 'products_list_bloc.dart';

abstract class ProductsListState extends Equatable {
  const ProductsListState();
}

class ProductsListInitial extends ProductsListState {
  @override
  List<Object> get props => [];
}
