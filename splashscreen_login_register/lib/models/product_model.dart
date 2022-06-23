import 'package:login_register/models/category_model.dart';
import 'package:login_register/models/gallery_model.dart';

class productModel {
  late int? id;
  late String? name;
  late double harga;
  late String? deskripsi;
  late String? tags;
  late String? status;
  late String? stok;
  late CategoryModel? category;
  late DateTime? createdAt;
  late DateTime? updateAt;
  late List<GalerryModel>? galleries;

  productModel({
    required this.id,
    required this.name,
    required this.harga,
    required this.deskripsi,
    required this.tags,
    required this.status,
    required this.stok,
    required this.category,
    required this.createdAt,
    required this.updateAt,
    required this.galleries,
  });

  productModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    harga = double.parse(json['harga'].toString());
    deskripsi = json['deskripsi'];

    tags = json['tags'];
    status = json['status'];
    stok = json['stok'];
    category = CategoryModel.fromJson(json['category']);
    galleries = json['galleries']
        .map<GalerryModel>((gallery) => GalerryModel.fromJson(gallery))
        .toList();

    createdAt = DateTime.parse(json['created_at']);
    updateAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJsosn() {
    return {
      'id': id,
      'name': name,
      'harga': harga,
      'deskripsi': deskripsi,
      'tags': tags,
      'status': status,
      'stok': stok,
      'category': category?.toJson(),
      'galleries': galleries?.map((gallery) => gallery.toJson()).toList(),
      'createdAt': createdAt.toString(),
      'updatedAt': updateAt.toString(),
    };
  }
}

class UnitializedProductModel extends productModel {
  UnitializedProductModel.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
}
