// To parse this JSON data, do
//
//     final vendedorSubastaModel = vendedorSubastaModelFromJson(jsonString);

import 'dart:convert';

VendedorSubastaModel vendedorSubastaModelFromJson(String str) =>
    VendedorSubastaModel.fromJson(json.decode(str));

String vendedorSubastaModelToJson(VendedorSubastaModel data) =>
    json.encode(data.toJson());

class VendedorSubastaModel {
  VendedorSubastaModel({
    required this.vendedorSubasta,
    required this.status,
    required this.message,
    required this.code,
  });

  List<VendedorSubasta> vendedorSubasta;
  String status;
  String message;
  int code;

  factory VendedorSubastaModel.fromJson(Map<String, dynamic> json) =>
      VendedorSubastaModel(
        vendedorSubasta: json["vendedorSubasta"] != null
            ? List<VendedorSubasta>.from(
                json["vendedorSubasta"].map((x) => VendedorSubasta.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "vendedorSubasta":
            List<dynamic>.from(vendedorSubasta.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class VendedorSubasta {
  VendedorSubasta({
    required this.id,
    required this.idSubasta,
    required this.nameVendedor,
    required this.companyVendedor,
    required this.emailVendedor,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int idSubasta;
  String nameVendedor;
  String companyVendedor;
  String emailVendedor;
  String address;
  DateTime createdAt;
  DateTime updatedAt;

  factory VendedorSubasta.fromJson(Map<String, dynamic> json) =>
      VendedorSubasta(
        id: int.tryParse(json["id"].toString()) ?? 0,
        idSubasta: int.tryParse(json["idSubasta"].toString()) ?? 0,
        nameVendedor: json["nameVendedor"].toString(),
        companyVendedor: json["companyVendedor"].toString(),
        emailVendedor: json["emailVendedor"].toString(),
        address: json["address"].toString(),
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idSubasta": idSubasta,
        "nameVendedor": nameVendedor,
        "companyVendedor": companyVendedor,
        "emailVendedor": emailVendedor,
        "address": address,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
