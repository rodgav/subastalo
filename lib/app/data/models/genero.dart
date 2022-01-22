// To parse this JSON data, do
//
//     final generoModel = generoModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GeneroModel generoModelFromJson(String str) =>
    GeneroModel.fromJson(json.decode(str));

String generoModelToJson(GeneroModel data) => json.encode(data.toJson());

class GeneroModel {
  GeneroModel({
    required this.generos,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Genero> generos;
  String status;
  String message;
  int code;

  factory GeneroModel.fromJson(Map<String, dynamic> json) => GeneroModel(
        generos: json["generos"] != null
            ? List<Genero>.from(json["generos"].map((x) => Genero.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "generos": List<dynamic>.from(generos.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Genero {
  Genero({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  factory Genero.fromJson(Map<String, dynamic> json) => Genero(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
