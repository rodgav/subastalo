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
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString())??0,
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
    required this.idUser,
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
    required this.viewsReal,
    required this.views,
    required this.love,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int idUser;
  int idCategory;
  int idSubCategory;
  int idTypeSubasta;
  int idHoraSubasta;
  int idStateSubasta;
  String title;
  String price;
  String date;
  String brand;
  String model;
  String year;
  int mileage;
  String fuel;
  String details;
  int viewsReal;
  int views;
  int love;
  DateTime createdAt;
  DateTime updatedAt;

  factory Subasta.fromJson(Map<String, dynamic> json) => Subasta(
        id: int.tryParse(json["id"].toString())??0,
        idUser: int.tryParse(json["idUser"].toString())??0,
        idCategory: int.tryParse(json["idCategory"].toString())??0,
        idSubCategory: int.tryParse(json["idSubCategory"].toString())??0,
        idTypeSubasta: int.tryParse(json["idTypeSubasta"].toString())??0,
        idHoraSubasta: int.tryParse(json["idHoraSubasta"].toString())??0,
        idStateSubasta: int.tryParse(json["idStateSubasta"].toString())??0,
        title: json["title"].toString(),
        price: json["price"].toString(),
        date: json["date"].toString(),
        brand: json["brand"].toString(),
        model: json["model"].toString(),
        year: json["year"].toString(),
        mileage: int.tryParse(json["mileage"].toString())??0,
        fuel: json["fuel"].toString(),
        details: json["details"].toString(),
        viewsReal: int.tryParse(json["viewsReal"].toString())??0,
        views: int.tryParse(json["views"].toString())??0,
        love: int.tryParse(json["love"].toString())??0,
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idUser": idUser,
        "idCategory": idCategory,
        "idSubCategory": idSubCategory,
        "idTypeSubasta": idTypeSubasta,
        "idHoraSubasta": idHoraSubasta,
        "idStateSubasta": idStateSubasta,
        "title": title,
        "price": price,
        "date": date,
        "brand": brand,
        "model": model,
        "year": year,
        "mileage": mileage,
        "fuel": fuel,
        "details": details,
        "viewsReal": viewsReal,
        "views": views,
        "love": love,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
