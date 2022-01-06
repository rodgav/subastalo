
// To parse this JSON data, do
//
//     final departamentosModel = departamentosModelFromJson(jsonString);

import 'dart:convert';

DepartamentosModel departamentosModelFromJson(String str) => DepartamentosModel.fromJson(json.decode(str));

String departamentosModelToJson(DepartamentosModel data) => json.encode(data.toJson());

class DepartamentosModel {
  DepartamentosModel({
    required this.departamentos,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Departamento> departamentos;
  String status;
  String message;
  int code;

  factory DepartamentosModel.fromJson(Map<String, dynamic> json) => DepartamentosModel(
    departamentos:json["departamentos"]!=null? List<Departamento>.from(json["departamentos"].map((x) => Departamento.fromJson(x))):[],
    status: json["status"].toString(),
    message: json["message"].toString(),
    code: int.tryParse(json["code"].toString())??0,
  );

  Map<String, dynamic> toJson() => {
    "departamentos": List<dynamic>.from(departamentos.map((x) => x.toJson())),
    "status": status,
    "message": message,
    "code": code,
  };
}

class Departamento {
  Departamento({
    required this.id,
    required this.nombre,
  });

  String id;
  String nombre;

  factory Departamento.fromJson(Map<String, dynamic> json) => Departamento(
    id: json["id"].toString(),
    nombre: json["nombre"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nombre": nombre,
  };
}
