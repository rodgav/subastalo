// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.users,
    required this.status,
    required this.message,
    required this.code,
  });

  List<User> users;
  String status;
  String message;
  int code;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    users: json["users"]!=null?List<User>.from(json["users"].map((x) => User.fromJson(x))):[],
    status: json["status"].toString(),
    message: json["message"].toString(),
    code: int.tryParse(json["code"].toString())??0,
  );

  Map<String, dynamic> toJson() => {
    "users": List<dynamic>.from(users.map((x) => x.toJson())),
    "status": status,
    "message": message,
    "code": code,
  };
}

class User {
  User({
    required this.id,
    required this.dni,
    required this.idRole,
    required this.idGender,
    required this.idDistrite,
    required this.name,
    required this.active,
    required this.email,
    required this.dateBirth,
    required this.phone,
    required this.address,
    required this.coins,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String dni;
  int idRole;
  int idGender;
  String idDistrite;
  String name;
  int active;
  String email;
  DateTime dateBirth;
  String phone;
  String address;
  String coins;
  DateTime createdAt;
  DateTime updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: int.tryParse(json["id"].toString())??0,
    dni: json["dni"].toString(),
    idRole: int.tryParse(json["idRole"].toString())??0,
    idGender: int.tryParse(json["idGender"].toString())??0,
    idDistrite: json["idDistrite"].toString(),
    name: json["name"].toString(),
    active: int.tryParse(json["active"].toString())??0,
    email: json["email"].toString(),
    dateBirth:json["date_birth"]!=null? DateTime.parse(json["date_birth"]):DateTime.now(),
    phone: json["phone"].toString(),
    address: json["address"].toString(),
    coins: json["coins"].toString(),
    createdAt:json["created_at"]!=null?DateTime.parse(json["created_at"]):DateTime.now(),
    updatedAt: json["updated_at"]!=null?DateTime.parse(json["updated_at"]):DateTime.now(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "dni": dni,
    "idRole": idRole,
    "idGender": idGender,
    "idDistrite": idDistrite,
    "name": name,
    "active": active,
    "email": email,
    "date_birth": "${dateBirth.year.toString().padLeft(4, '0')}-${dateBirth.month.toString().padLeft(2, '0')}-${dateBirth.day.toString().padLeft(2, '0')}",
    "phone": phone,
    "address": address,
    "coins": coins,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
