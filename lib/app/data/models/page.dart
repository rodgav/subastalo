// To parse this JSON data, do
//
//     final paginasModel = paginasModelFromJson(jsonString);

import 'dart:convert';

PaginasModel paginasModelFromJson(String str) =>
    PaginasModel.fromJson(json.decode(str));

String paginasModelToJson(PaginasModel data) => json.encode(data.toJson());

class PaginasModel {
  PaginasModel({
    required this.paginas,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Pagina> paginas;
  String status;
  String message;
  int code;

  factory PaginasModel.fromJson(Map<String, dynamic> json) => PaginasModel(
        paginas: json["paginas"] != null
            ? List<Pagina>.from(json["paginas"].map((x) => Pagina.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "paginas": List<dynamic>.from(paginas.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Pagina {
  Pagina({
    required this.id,
    required this.title,
    required this.html,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String title;
  String html;
  DateTime createdAt;
  DateTime updatedAt;

  factory Pagina.fromJson(Map<String, dynamic> json) => Pagina(
        id: int.tryParse(json["id"].toString()) ?? 0,
        title: json["title"].toString(),
        html: json["html"].toString(),
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "html": html,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
