import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login_register/models/cart_model.dart';

class TransactionService {
  String baseUrl = 'http://192.168.1.4:8000/api';

  Future<bool> checkout(
      String token, List<CartModel> carts, double totalharga) async {
    var url = "$baseUrl/checkout";
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };

    var body = jsonEncode({
      'address': "Sukowono",
      'items': carts
          .map((cart) => {
                'id': cart.product.id,
                'quantity': cart.quantity,
              })
          .toList(),
      'status': "PENDING",
      'total_harga': totalharga,
      'shipping_price': 0,
    });

    print(headers);
    print(body);

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception("Gagal checkout");
    }
  }
}
