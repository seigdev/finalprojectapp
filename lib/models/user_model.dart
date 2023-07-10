// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String name;
  String email;
  String phone;
  String type;
  String password;
  String location;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.type,
    required this.password,
    required this.location,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        type: json["type"],
        password: json["password"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "type": type,
        "password": password,
        "location": location,
      };
}
