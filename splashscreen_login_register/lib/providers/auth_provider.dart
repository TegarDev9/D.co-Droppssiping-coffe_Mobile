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
    String? nama,
    String? username,
    String? email,
    String? notelp,
    String? password,
    String? token,
  }) async {
    try {
      UserModel user = await AuthService().register(
        nama: nama,
        username: username,
        email: email,
        notelp: notelp,
        password: password,
      );
      debugPrint(nama);
      debugPrint(username);
      debugPrint(email);
      debugPrint(notelp);
      debugPrint(password);
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    String? email,
    String? password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );
      debugPrint(email);
      debugPrint(password);
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
