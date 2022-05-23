class UserModel {
  String? username;
  String? email;
  String? phone;
  String? password;
  String? token;

  UserModel({
    required this.username,
    required this.email,
    required this.phone,
    required this.password,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    token = json['token'];
  }
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'phone': phone,
      'password': password,
      'token': token,
    };
  }
}
