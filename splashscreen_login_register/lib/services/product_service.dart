import 'dart:convert';
import 'dart:html';

import 'package:login_register/models/product_model.dart';
import 'package:login_register/pages/pages.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'http://192.168.0.101:8000/api';

  Future<List<productModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<productModel> products = [];

      for (var item in data) {
        products.add(productModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products! ');
    }
  }
}
