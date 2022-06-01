import 'package:flutter/material.dart';
import 'package:login_register/models/product_model.dart';

class WishlistProvider with ChangeNotifier {
  List<productModel> _wishlist = [];
  List<productModel> get wishlist => _wishlist;
  set wishlist(List<productModel> wishList) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setProduct(productModel product) {
    if (!isWishlist(product)) {
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();
  }

  isWishlist(productModel product) {
    if (_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
