import 'dart:convert';

import 'package:login_register/models/user_model.dart';
import 'package:login_register/pages/pages.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'http://192.168.1.4:8000/api';

  Future<UserModel> register({
    String? nama,
    String? username,
    String? email,
    String? notelp,
    String? password,
    String? token,
  }) async {
    var url = '$baseUrl/register';
    var headers = {'content-Type': 'application/json'};
    var body = jsonEncode({
      'nama': nama,
      'username': username,
      'email': email,
      'no_telp': notelp,
      'password': password,
      'token': token,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  Future<UserModel> update({
    var token,
    String? name,
    String? username,
    String? email,
    String? password,
    String? notelp,
  }) async {
    var url = '$baseUrl/userApi';
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
      'notelp': notelp,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token,
      },
      body: body,
    );

    if (response.statusCode == 200) {
      AuthService().logout(token: token);

      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Update');
    }
  }

  Future<bool> logout({
    required String token,
  }) async {
    var url = '$baseUrl/logout';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
    );

    // print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Gagal Logout');
    }
  }
}
