// To parse this JSON data, do
//
//     final distritosModel = distritosModelFromJson(jsonString);

import 'dart:convert';

DistritosModel distritosModelFromJson(String str) => DistritosModel.fromJson(json.decode(str));

String distritosModelToJson(DistritosModel data) => json.encode(data.toJson());

class DistritosModel {
  DistritosModel({
    required this.distritos,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Distrito> distritos;
  String status;
  String message;
  int code;

  factory DistritosModel.fromJson(Map<String, dynamic> json) => DistritosModel(
    distritos: json["distritos"]!=null?List<Distrito>.from(json["distritos"].map((x) => Distrito.fromJson(x))):[],
    status: json["status"].toString(),
    message: json["message"].toString(),
    code: int.tryParse(json["code"].toString())??0,
  );

  Map<String, dynamic> toJson() => {
    "distritos": List<dynamic>.from(distritos.map((x) => x.toJson())),
    "status": status,
    "message": message,
    "code": code,
  };
}

class Distrito {
  Distrito({
    required this.id,
    required this.nombre,
    required this.idProvincia,
    required this.idDepartamento,
  });

  String id;
  String nombre;
  String idProvincia;
  String idDepartamento;

  factory Distrito.fromJson(Map<String, dynamic> json) => Distrito(
    id: json["id"].toString(),
    nombre: json["nombre"].toString(),
    idProvincia: json["id_provincia"].toString(),
    idDepartamento: json["id_departamento"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
    "id_provincia": idProvincia,
    "id_departamento": idDepartamento,
  };
}
