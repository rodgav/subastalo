// To parse this JSON data, do
//
//     final subastaModel = subastaModelFromJson(jsonString);

import 'dart:convert';

SubastaModel subastaModelFromJson(String str) =>
    SubastaModel.fromJson(json.decode(str));

String subastaModelToJson(SubastaModel data) => json.encode(data.toJson());

class SubastaModel {
  SubastaModel({
    required this.subasta,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Subasta> subasta;
  String status;
  String message;
  int code;

  factory SubastaModel.fromJson(Map<String, dynamic> json) => SubastaModel(
        subasta: json["subasta"] != null
            ? List<Subasta>.from(
                json["subasta"].map((x) => Subasta.fromJson(x)))
            : [],
        status: json["status"] ?? '',
        message: json["message"] ?? '',
        code: json["code"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "subasta": List<dynamic>.from(subasta.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Subasta {
  Subasta({
    required this.id,
    required this.idCategory,
    required this.idSubCategory,
    required this.idTypeSubasta,
    required this.idHoraSubasta,
    required this.idStateSubasta,
    required this.title,
    required this.price,
    required this.date,
    required this.brand,
    required this.model,
    required this.year,
    required this.mileage,
    required this.fuel,
    required this.details,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int idCategory;
  int idSubCategory;
  int idTypeSubasta;
  int idHoraSubasta;
  int idStateSubasta;
  String title;
  String price;
  DateTime date;
  String brand;
  String model;
  String year;
  String mileage;
  String fuel;
  String details;
  DateTime createdAt;
  DateTime updatedAt;

  factory Subasta.fromJson(Map<String, dynamic> json) => Subasta(
        id: json["id"] ?? 0,
        idCategory: json["idCategory"] ?? 0,
        idSubCategory: json["idSubCategory"] ?? 0,
        idTypeSubasta: json["idTypeSubasta"] ?? 0,
        idHoraSubasta: json["idHoraSubasta"] ?? 0,
        idStateSubasta: json["idStateSubasta"] ?? 0,
        title: json["title"] ?? '',
        price: json["price"] ?? '',
        date: json["date"] != null
            ? DateTime.parse(json["date"])
            : DateTime.now(),
        brand: json["brand"] ?? '',
        model: json["model"] ?? '',
        year: json["year"] ?? '',
        mileage: json["mileage"] ?? '',
        fuel: json["fuel"] ?? '',
        details: json["details"] ?? '',
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idCategory": idCategory,
        "idSubCategory": idSubCategory,
        "idTypeSubasta": idTypeSubasta,
        "idHoraSubasta": idHoraSubasta,
        "idStateSubasta": idStateSubasta,
        "title": title,
        "price": price,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "brand": brand,
        "model": model,
        "year": year,
        "mileage": mileage,
        "fuel": fuel,
        "details": details,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
