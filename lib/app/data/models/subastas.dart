// To parse this JSON data, do
//
//     final subastasModel = subastasModelFromJson(jsonString);

import 'dart:convert';

SubastasModel subastasModelFromJson(String str) => SubastasModel.fromJson(json.decode(str));

String subastasModelToJson(SubastasModel data) => json.encode(data.toJson());

class SubastasModel {
  SubastasModel({
    required this.subastas,
  });

  List<Subasta> subastas;

  factory SubastasModel.fromJson(Map<String, dynamic> json) => SubastasModel(
    subastas: List<Subasta>.from(json["subastas"].map((x) => Subasta.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "subastas": List<dynamic>.from(subastas.map((x) => x.toJson())),
  };
}

class Subasta {
  Subasta({
    required this.id,
    required this.name,
    required this.type,
    required this.rating,
    required this.stateVendedor,
    required this.nameVendedor,
    required this.imagePrimary,
    required this.videoPrimary,
    required this.description,
    required this.fileTecnique,
    required this.estate,
    required this.location,
    required this.date,
    required this.views,
    required this.price,
  });

  String id;
  String name;
  String type;
  double rating;
  String stateVendedor;
  String nameVendedor;
  String imagePrimary;
  String videoPrimary;
  String description;
  String fileTecnique;
  String estate;
  String location;
  DateTime date;
  int views;
  int price;

  factory Subasta.fromJson(Map<String, dynamic> json) => Subasta(
    id: json["id"],
    name: json["name"],
    type: json["type"],
    rating: json["rating"].toDouble(),
    stateVendedor: json["state_vendedor"],
    nameVendedor: json["name_vendedor"],
    imagePrimary: json["image_primary"],
    videoPrimary: json["video_primary"],
    description: json["description"],
    fileTecnique: json["file_tecnique"],
    estate: json["estate"],
    location: json["location"],
    date: DateTime.parse(json["date"]),
    views: json["views"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": type,
    "rating": rating,
    "state_vendedor": stateVendedor,
    "name_vendedor": nameVendedor,
    "image_primary": imagePrimary,
    "video_primary": videoPrimary,
    "description": description,
    "file_tecnique": fileTecnique,
    "estate": estate,
    "location": location,
    "date": date.toIso8601String(),
    "views": views,
    "price": price,
  };
}
