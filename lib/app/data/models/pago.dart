// To parse this JSON data, do
//
//     final pagoModel = pagoModelFromJson(jsonString);

import 'dart:convert';

PagoModel pagoModelFromJson(String str) => PagoModel.fromJson(json.decode(str));

String pagoModelToJson(PagoModel data) => json.encode(data.toJson());

class PagoModel {
  PagoModel({
    required this.pago,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Pago> pago;
  String status;
  String message;
  int code;

  factory PagoModel.fromJson(Map<String, dynamic> json) => PagoModel(
        pago: json["pago"] != null
            ? List<Pago>.from(json["pago"].map((x) => Pago.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "pago": List<dynamic>.from(pago.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Pago {
  Pago({
    required this.id,
    required this.idTypePay,
    required this.idStatePay,
    required this.name,
    required this.image,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int idTypePay;
  int idStatePay;
  String name;
  String image;
  String description;
  DateTime createdAt;
  DateTime updatedAt;

  factory Pago.fromJson(Map<String, dynamic> json) => Pago(
        id: int.tryParse(json["id"].toString()) ?? 0,
        idTypePay: int.tryParse(json["idTypePay"].toString()) ?? 0,
        idStatePay: int.tryParse(json["idStatePay"].toString()) ?? 0,
        name: json["name"].toString(),
        image: json["image"].toString(),
        description: json["description"].toString(),
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idTypePay": idTypePay,
        "idStatePay": idStatePay,
        "name": name,
        "image": image,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
