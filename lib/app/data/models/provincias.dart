// To parse this JSON data, do
//
//     final provinciasModel = provinciasModelFromJson(jsonString);

import 'dart:convert';

ProvinciasModel provinciasModelFromJson(String str) =>
    ProvinciasModel.fromJson(json.decode(str));

String provinciasModelToJson(ProvinciasModel data) =>
    json.encode(data.toJson());

class ProvinciasModel {
  ProvinciasModel({
    required this.provincias,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Provincia> provincias;
  String status;
  String message;
  int code;

  factory ProvinciasModel.fromJson(Map<String, dynamic> json) =>
      ProvinciasModel(
        provincias: json["provincias"] != null
            ? List<Provincia>.from(
                json["provincias"].map((x) => Provincia.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "provincias": List<dynamic>.from(provincias.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Provincia {
  Provincia({
    required this.id,
    required this.nombre,
    required this.idDepartmento,
  });

  String id;
  String nombre;
  String idDepartmento;

  factory Provincia.fromJson(Map<String, dynamic> json) => Provincia(
        id: json["id"].toString(),
        nombre: json["nombre"].toString(),
        idDepartmento: json["id_departmento"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "id_departmento": idDepartmento,
      };
}
