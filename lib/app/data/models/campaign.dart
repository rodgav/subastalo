// To parse this JSON data, do
//
//     final campaignModel = campaignModelFromJson(jsonString);

import 'dart:convert';

CampaignModel campaignModelFromJson(String str) =>
    CampaignModel.fromJson(json.decode(str));

String campaignModelToJson(CampaignModel data) => json.encode(data.toJson());

class CampaignModel {
  CampaignModel({
    required this.campaigns,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Campaign> campaigns;
  String status;
  String message;
  int code;

  factory CampaignModel.fromJson(Map<String, dynamic> json) => CampaignModel(
        campaigns: json["campaigns"]!=null?List<Campaign>.from(
            json["campaigns"].map((x) => Campaign.fromJson(x))):[],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString())??0,
      );

  Map<String, dynamic> toJson() => {
        "campaigns": List<dynamic>.from(campaigns.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Campaign {
  Campaign({
    required this.id,
    required this.name,
    required this.code,
    required this.amount,
    required this.dateStart,
    required this.dateFinish,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String code;
  String amount;
  DateTime dateStart;
  DateTime dateFinish;
  DateTime createdAt;
  DateTime updatedAt;

  factory Campaign.fromJson(Map<String, dynamic> json) => Campaign(
        id: int.tryParse(json["id"].toString()) ?? 0,
        name: json["name"].toString(),
        code: json["code"].toString(),
        amount: json["amount"].toString(),
        dateStart: json["dateStart"] != null
            ? DateTime.parse(json["dateStart"])
            : DateTime.now(),
        dateFinish: json["dateFinish"] != null
            ? DateTime.parse(json["dateFinish"])
            : DateTime.now(),
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "amount": amount,
        "dateStart": dateStart.toIso8601String(),
        "dateFinish": dateFinish.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
