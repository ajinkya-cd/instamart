import 'dart:convert';

import 'package:instamart/data/models/cart_item_model.dart';
import 'package:instamart/data/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/shared_preferences_keys_constants.dart';
import '../../core/local_preferences/local_preferences.dart';

abstract class CartLocalDaraSource {
  Future<List<CartItemModel>> getCartProducts();
  Future<void> addProductToCart(ProductModel product);
  Future<void> removeProductFromCart(ProductModel product);
  Future<void> updateProductQuantity(ProductModel product, int quantity);

  Future<void> saveCartToStorage(String cart);
}

class CartLocalDaraSourceImpl implements CartLocalDaraSource {
  final LocalPreferences localPreferences;

  CartLocalDaraSourceImpl({required this.localPreferences});

  @override
  Future<void> addProductToCart(ProductModel product) async {
    final prefs = await SharedPreferences.getInstance();

    var jsonData = jsonDecode(prefs.getString('cart')!) as List<dynamic>;
    List<CartItemModel> cart = jsonData.map((cartItem) => CartItemModel.fromJson(cartItem)).toList();

    cart.add(CartItemModel(
      product: product,
      quantity: 1
    ));

    String productString = jsonEncode(cart);
    prefs.setString('cart', productString);
  }

  @override
  Future<List<CartItemModel>> getCartProducts() async {
    final prefs = await SharedPreferences.getInstance();

    var jsonData = jsonDecode(prefs.getString('cart')!) as List<dynamic>;
    List<CartItemModel> cart = jsonData.map((cartItem) => CartItemModel.fromJson(cartItem)).toList();

    return cart;
  }

  @override
  Future<void> removeProductFromCart(ProductModel product) {
    // TODO: implement removeProductFromCart
    throw UnimplementedError();
  }

  @override
  Future<void> updateProductQuantity(ProductModel product, int quantity) {
    // TODO: implement updateProductQuantity
    throw UnimplementedError();
  }

  @override
  Future<void> saveCartToStorage(String cart) async =>
    localPreferences.set(
      SharedPreferencesKeys.cart,
      cart,
    );

}
