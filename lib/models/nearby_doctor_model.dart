// To parse this JSON data, do
//
//     final doctorNearbyModel = doctorNearbyModelFromJson(jsonString);

import 'dart:convert';

DoctorNearbyModel doctorNearbyModelFromJson(String str) =>
    DoctorNearbyModel.fromJson(json.decode(str));

String doctorNearbyModelToJson(DoctorNearbyModel data) =>
    json.encode(data.toJson());

class DoctorNearbyModel {
  String userId;
  String name;
  String email;
  String phone;
  String password;
  String type;
  String location;
  DateTime createdAt;
  DateTime updatedAt;

  DoctorNearbyModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.type,
    required this.location,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DoctorNearbyModel.fromJson(Map<String, dynamic> json) =>
      DoctorNearbyModel(
        userId: json["userId"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        type: json["type"],
        location: json["location"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "type": type,
        "location": location,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
