import 'dart:convert';

import 'package:instamart/data/models/product_model.dart';
import 'package:instamart/domain/entities/cart_item_entity.dart';


class CartItemModel extends CartItemEntity {
  const CartItemModel ({
        ProductModel? product,
        int? quantity,
      })
      : super(
    product: product,
    quantity: quantity,
  );

  factory CartItemModel.fromEntity(CartItemEntity cartItemEntity) {
    return CartItemModel(
      product: cartItemEntity.product,
      quantity: cartItemEntity.quantity
    );
  }

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      product: ProductModel.fromJson(json['product']),
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product': product!.toJson(),
      'quantity': quantity,
    };
  }

  factory CartItemModel.fromJsonString(String jsonString) {
    final Map<String, dynamic> data = json.decode(jsonString);
    return CartItemModel.fromJson(data);
  }

  String toJsonString() {
    final jsonMap = toJson();
    return json.encode(jsonMap);
  }
}
