import 'package:login_register/models/product_model.dart';

class CartModel {
  late int id;
  late productModel product;
  late int quantity;

  CartModel({
    required this.id,
    required this.product,
    required this.quantity,
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = productModel.fromJson(json['product']);
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product.toJsosn(),
      'quantity': quantity,
    };
  }

  getTotalharga() {
    return product.harga * quantity;
  }
}

class ProductModel {}
