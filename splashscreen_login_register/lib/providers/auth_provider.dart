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
    String? no_telp,
    String? password,
    String? token,
  }) async {
    try {
      UserModel user = await AuthService().register(
        nama: nama,
        username: username,
        email: email,
        no_telp: no_telp,
        password: password,
      );
      debugPrint(nama);
      debugPrint(username);
      debugPrint(email);
      debugPrint(no_telp);
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

  Future<bool> updateProfile({
    required String nama,
    required String username,
    required String email,
    required String no_telp,
    required String password,
    required String token,
  }) async {
    try {
      UserModel user = await AuthService().updateProfile(
        token: token,
        nama: nama,
        username: username,
        email: email,
        no_telp: no_telp,
        password: password,
      );
      debugPrint(nama);
      debugPrint(username);
      debugPrint(email);
      debugPrint(no_telp);
      debugPrint(password);
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
