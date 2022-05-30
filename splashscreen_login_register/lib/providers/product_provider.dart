import 'package:flutter/material.dart';
import 'package:login_register/models/product_model.dart';
import 'package:login_register/services/product_service.dart';

class Productprovider with ChangeNotifier {
  List<productModel> _products = [];
  List<productModel> get products => _products;
  set products(List<productModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    try {
      List<productModel> products = await ProductService().getProducts();
      _products = products;
    } catch (e) {
      print(e);
    }
  }
}
