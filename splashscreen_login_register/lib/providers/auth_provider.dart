import 'package:flutter/material.dart';
import 'package:login_register/models/user_model.dart';
import 'package:login_register/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;
  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String? username,
    String? email,
    String? phone,
    String? password,
    String? token,
  }) async {
    try {
      UserModel user = await AuthService().register(
        username: username,
        email: email,
        phone: phone,
        password: password,
      );
      debugPrint(username);
      debugPrint(email);
      debugPrint(phone);
      debugPrint(password);
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    String? username,
    String? password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        username: username,
        password: password,
      );
      debugPrint(username);
      debugPrint(password);
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
