import 'dart:convert';

import 'package:login_register/models/user_model.dart';
import 'package:login_register/pages/pages.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = '/api';

  Future<UserModel> register({
    String? username,
    String? email,
    String? phone,
    String? password,
    String? token,
  }) async {
    var url = '$baseUrl/register';
    var headers = {'content-Type': 'application/json'};
    var body = jsonEncode({
      'username': username,
      'email': email,
      'phone': phone,
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
}
