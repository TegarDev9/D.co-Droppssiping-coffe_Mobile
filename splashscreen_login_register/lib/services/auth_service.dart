import 'dart:convert';

import 'package:login_register/models/user_model.dart';
import 'package:login_register/pages/pages.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://ws-tif.com/kel14/D.co/public/api';

  Future<UserModel> register({
    String? nama,
    String? username,
    String? email,
    String? no_telp,
    String? password,
    String? token,
  }) async {
    var url = '$baseUrl/register';
    var headers = {'content-Type': 'application/json'};
    var body = jsonEncode({
      'nama': nama,
      'username': username,
      'email': email,
      'no_telp': no_telp,
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
      user.token = 'Bearer ' + data['access_token'];

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
      // data['user']['token'] = 'Bearer ' + data['access_token'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  Future<UserModel> updateProfile({
    required String nama,
    required String username,
    required String email,
    required String no_telp,
    required String password,
    required String token,
  }) async {
    var url = '$baseUrl/userApi';
    var headers = {
      'content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode(
      {
        'nama': nama,
        'username': username,
        'email': email,
        'no_telp': no_telp,
        'password': password,
        'token': token,
      },
    );

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['data']);
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

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Gagal Logout');
    }
  }
}
