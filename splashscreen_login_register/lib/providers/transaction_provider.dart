import 'package:flutter/material.dart';
import 'package:login_register/models/cart_model.dart';
import 'package:login_register/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  Future<bool> checkout(
      String token, List<CartModel> carts, double totalharga) async {
    try {
      if (await TransactionService().checkout(token, carts, totalharga)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
