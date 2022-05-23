// To parse this JSON data, do
//
//     final tiposSubastaModel = tiposSubastaModelFromJson(jsonString);

import 'dart:convert';

TiposSubastaModel tiposSubastaModelFromJson(String str) =>
    TiposSubastaModel.fromJson(json.decode(str));

String tiposSubastaModelToJson(TiposSubastaModel data) =>
    json.encode(data.toJson());

class TiposSubastaModel {
  TiposSubastaModel({
    required this.typeSubasta,
    required this.status,
    required this.message,
    required this.code,
  });

  List<TypeSubasta> typeSubasta;
  String status;
  String message;
  int code;

  factory TiposSubastaModel.fromJson(Map<String, dynamic> json) =>
      TiposSubastaModel(
        typeSubasta: List<TypeSubasta>.from(
            json["typeSubasta"].map((x) => TypeSubasta.fromJson(x))),
        status: json["status"],
        message: json["message"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "typeSubasta": List<dynamic>.from(typeSubasta.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class TypeSubasta {
  TypeSubasta({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  factory TypeSubasta.fromJson(Map<String, dynamic> json) => TypeSubasta(
        id: int.tryParse(json["id"].toString()) ?? 0,
        name: json["name"].toString(),
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
