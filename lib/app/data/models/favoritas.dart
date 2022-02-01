// To parse this JSON data, do
//
//     final favoritaModel = favoritaModelFromJson(jsonString);

import 'dart:convert';

FavoritaModel favoritaModelFromJson(String str) =>
    FavoritaModel.fromJson(json.decode(str));

String favoritaModelToJson(FavoritaModel data) => json.encode(data.toJson());

class FavoritaModel {
  FavoritaModel({
    required this.subasta,
    required this.status,
    required this.message,
    required this.code,
  });

  List<SubastaElement> subasta;
  String status;
  String message;
  int code;

  factory FavoritaModel.fromJson(Map<String, dynamic> json) => FavoritaModel(
        subasta: json["subasta"]!=null?List<SubastaElement>.from(
            json["subasta"].map((x) => SubastaElement.fromJson(x))):[],
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

class SubastaElement {
  SubastaElement({
    required this.id,
    required this.idUser,
    required this.idSubasta,
    required this.createdAt,
    required this.updatedAt,
    required this.subasta,
  });

  int id;
  int idUser;
  int idSubasta;
  DateTime createdAt;
  DateTime updatedAt;
  SubastaSubasta subasta;

  factory SubastaElement.fromJson(Map<String, dynamic> json) => SubastaElement(
        id: int.tryParse(json["id"].toString()) ?? 0,
        idUser: int.tryParse(json["idUser"].toString()) ?? 0,
        idSubasta: int.tryParse(json["idSubasta"].toString()) ?? 0,
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["created_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
        subasta: SubastaSubasta.fromJson(json["subasta"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idUser": idUser,
        "idSubasta": idSubasta,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "subasta": subasta.toJson(),
      };
}

class SubastaSubasta {
  SubastaSubasta({
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
  DateTime date;
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

  factory SubastaSubasta.fromJson(Map<String, dynamic>? json) => SubastaSubasta(
        id: int.tryParse((json?["id"]).toString()) ?? 0,
        idUser: int.tryParse((json?["idUser"]).toString()) ?? 0,
        idCategory: int.tryParse((json?["idCategory"]).toString()) ?? 0,
        idSubCategory: int.tryParse((json?["idSubCategory"]).toString()) ?? 0,
        idTypeSubasta: int.tryParse((json?["idTypeSubasta"]).toString()) ?? 0,
        idHoraSubasta: int.tryParse((json?["idHoraSubasta"]).toString()) ?? 0,
        idStateSubasta: int.tryParse((json?["idStateSubasta"]).toString()) ?? 0,
        title: (json?["title"]).toString(),
        price: (json?["price"]).toString(),
        date: (json?["date"]) != null
            ? DateTime.parse((json?["date"]))
            : DateTime.now(),
        brand: (json?["brand"]).toString(),
        model: (json?["model"]).toString(),
        year: (json?["year"]).toString(),
        mileage: int.tryParse((json?["mileage"]).toString()) ?? 0,
        fuel: (json?["fuel"]).toString(),
        details: (json?["details"]).toString(),
        viewsReal: int.tryParse((json?["viewsReal"]).toString()) ?? 0,
        views: int.tryParse((json?["views"]).toString()) ?? 0,
        love: int.tryParse((json?["love"]).toString()) ?? 0,
        createdAt: (json?["created_at"]) != null
            ? DateTime.parse((json?["created_at"]))
            : DateTime.now(),
        updatedAt: (json?["updated_at"]) != null
            ? DateTime.parse((json?["updated_at"]))
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
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
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
