// To parse this JSON data, do
//
//     final categoriasModel = categoriasModelFromJson(jsonString);

import 'dart:convert';

CategoriasModel categoriasModelFromJson(String str) => CategoriasModel.fromJson(json.decode(str));

String categoriasModelToJson(CategoriasModel data) => json.encode(data.toJson());

class CategoriasModel {
  CategoriasModel({
    required this.categorias,
  });

  List<Categoria> categorias;

  factory CategoriasModel.fromJson(Map<String, dynamic> json) => CategoriasModel(
    categorias: List<Categoria>.from(json["categorias"].map((x) => Categoria.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "categorias": List<dynamic>.from(categorias.map((x) => x.toJson())),
  };
}

class Categoria {
  Categoria({
    required this.name,
    required this.asset,
    required this.data,
  });

  String name;
  String asset;
  List<Datum> data;

  factory Categoria.fromJson(Map<String, dynamic> json) => Categoria(
    name: json["name"],
    asset: json["asset"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "asset": asset,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
