// To parse this JSON data, do
//
//     final CategorysModel = CategorysModelFromJson(jsonString);

import 'dart:convert';

CategorysModel CategorysModelFromJson(String str) =>
    CategorysModel.fromJson(json.decode(str));

String CategorysModelToJson(CategorysModel data) => json.encode(data.toJson());

class CategorysModel {
  CategorysModel({
    required this.categorys,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Category> categorys;
  String status;
  String message;
  int code;

  factory CategorysModel.fromJson(Map<String, dynamic> json) => CategorysModel(
        categorys: json["categorys"] != null
            ? List<Category>.from(
                json["categorys"].map((x) => Category.fromJson(x)))
            : [],
        status: json["status"] ?? '',
        message: json["message"] ?? '',
        code: json["code"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "categorys": List<dynamic>.from(categorys.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Category {
  Category(
      {required this.id,
      required this.name,
      required this.asset,
      required this.createdAt,
      required this.updatedAt,
      required this.subCategorys});

  int id;
  String name;
  String asset;
  DateTime createdAt;
  DateTime updatedAt;
  List<SubCategory> subCategorys;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        asset: json["asset"] ?? '',
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
        subCategorys: json["sub_categorys"] != null
            ? List<SubCategory>.from(
                json["sub_categorys"].map((x) => SubCategory.fromJson(x)))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "asset": asset,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "sub_categorys":
            List<dynamic>.from(subCategorys.map((x) => x.toJson())),
      };
}

class SubCategory {
  SubCategory({
    required this.id,
    required this.idCategory,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int idCategory;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
        idCategory: json["idCategory"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "idCategory": idCategory,
      };
}
