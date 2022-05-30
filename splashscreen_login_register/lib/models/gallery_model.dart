class GalerryModel {
  int? id;
  String? url;

  GalerryModel({
    this.id,
    this.url,
  });

  GalerryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
