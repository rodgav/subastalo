// To parse this JSON data, do
//
//     final horasSubastaModel = horasSubastaModelFromJson(jsonString);

import 'dart:convert';

HorasSubastaModel horasSubastaModelFromJson(String str) => HorasSubastaModel.fromJson(json.decode(str));

String horasSubastaModelToJson(HorasSubastaModel data) => json.encode(data.toJson());

class HorasSubastaModel {
  HorasSubastaModel({
    required this.horasSubasta,
    required this.status,
    required this.message,
    required this.code,
  });

  List<HorasSubasta> horasSubasta;
  String status;
  String message;
  int code;

  factory HorasSubastaModel.fromJson(Map<String, dynamic> json) => HorasSubastaModel(
    horasSubasta: List<HorasSubasta>.from(json["horasSubasta"].map((x) => HorasSubasta.fromJson(x))),
    status: json["status"].toString(),
    message: json["message"].toString(),
    code: int.tryParse(json["code"].toString())??0,
  );

  Map<String, dynamic> toJson() => {
    "horasSubasta": List<dynamic>.from(horasSubasta.map((x) => x.toJson())),
    "status": status,
    "message": message,
    "code": code,
  };
}

class HorasSubasta {
  HorasSubasta({
    required this.id,
    required this.time,
  });

  int id;
  String time;

  factory HorasSubasta.fromJson(Map<String, dynamic> json) => HorasSubasta(
    id:int.tryParse( json["id"].toString())??0,
    time: json["time"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "time": time,
  };
}
