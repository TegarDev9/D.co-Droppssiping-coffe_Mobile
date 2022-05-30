class UserModel {
  String? nama;
  String? username;
  String? email;
  String? no_telp;
  String? password;
  String? token;

  UserModel({
    required this.nama,
    required this.username,
    required this.email,
    required this.no_telp,
    required this.password,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    username = json['username'];
    email = json['email'];
    no_telp = json['no_telp'];
    password = json['password'];
    token = json['token'];
  }
  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'username': username,
      'email': email,
      'no_telp': no_telp,
      'password': password,
      'token': token,
    };
  }
}
