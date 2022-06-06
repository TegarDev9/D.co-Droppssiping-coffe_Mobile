import 'dart:convert';
import 'dart:html';

import 'package:login_register/models/product_model.dart';
import 'package:login_register/pages/pages.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'https://ws-tif.com/kel14/D.co/public/api';

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
