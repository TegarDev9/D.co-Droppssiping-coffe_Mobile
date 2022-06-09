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

  Future<bool> update({
    var token,
    String? name,
    String? username,
    String? email,
    String? notelp,
  }) async {
    try {
      UserModel user = await AuthService().update(
        token: token,
        name: name,
        username: username,
        email: email,
        notelp: notelp,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> logout(
    String token,
  ) async {
    try {
      if (await AuthService().logout(
        token: token,
      )) {
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
