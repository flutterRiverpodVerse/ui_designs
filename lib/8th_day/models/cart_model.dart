import 'package:flutter/material.dart';
import 'package:ui_designs/gen/assets.gen.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Avocado", "4.00", Assets.images.avocado.path, Colors.green],
    ["Banana", "2.50", Assets.images.banana.path, Colors.yellow],
    ["Chicken", "12.80", Assets.images.chicken.path, Colors.brown],
    ["Water", "1.00", Assets.images.water.path, Colors.blue],
  ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
