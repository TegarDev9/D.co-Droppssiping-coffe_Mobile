import 'package:flutter/material.dart';
import 'package:login_register/models/cart_model.dart';
import 'package:login_register/models/product_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set cart(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(productModel product) {
    if (productExist(product)) {
      int index =
          _carts.indexWhere((element) => element.product.id == product.id);
      _carts[index].quantity++;
    } else {
      _carts.add(
        CartModel(
          id: _carts.length,
          product: product,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }

  removeCart(int id) {
    _carts.removeAt(id);
    notifyListeners();
  }

  addQuantity(int id) {
    _carts[id].quantity++;
    notifyListeners();
  }

  reduceQuantity(int id) {
    if (_carts[id].quantity == 0) {
      _carts.removeAt(id);
    } else {
      _carts[id].quantity--;
    }
    notifyListeners();
  }

  totalItems() {
    int total = 0;
    for (var item in _carts) {
      total += item.quantity;
    }

    return total;
  }

  totalHarga() {
    double total = 0;
    for (var item in _carts) {
      total += (item.quantity * item.product.id);
    }
    return total;
  }

  productExist(productModel product) {
    if (_carts.indexWhere((element) => element.product.id == product.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
