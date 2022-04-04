import 'package:equatable/equatable.dart';
import 'package:instamart/data/models/product_model.dart';

class CartItemEntity extends Equatable {

  final ProductModel? product;
  final int? quantity;

  const CartItemEntity({
    this.product,
    this.quantity,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>[product, quantity];
}
