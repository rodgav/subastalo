// To parse this JSON data, do
//
//     final mediaSubastaModel = mediaSubastaModelFromJson(jsonString);

import 'dart:convert';

MediaSubastaModel mediaSubastaModelFromJson(String str) =>
    MediaSubastaModel.fromJson(json.decode(str));

String mediaSubastaModelToJson(MediaSubastaModel data) =>
    json.encode(data.toJson());

class MediaSubastaModel {
  MediaSubastaModel({
    required this.mediaSubasta,
    required this.status,
    required this.message,
    required this.code,
  });

  List<MediaSubasta> mediaSubasta;
  String status;
  String message;
  int code;

  factory MediaSubastaModel.fromJson(Map<String, dynamic> json) =>
      MediaSubastaModel(
        mediaSubasta: json["mediaSubasta"] != null
            ? List<MediaSubasta>.from(
                json["mediaSubasta"].map((x) => MediaSubasta.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "mediaSubasta": List<dynamic>.from(mediaSubasta.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class MediaSubasta {
  MediaSubasta({
    required this.idSubasta,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.imageUrl4,
    required this.imageUrl5,
    required this.imageUrl6,
    required this.imageUrl7,
    required this.imageUrl8,
    required this.imageUrl9,
    required this.imageUrl10,
    required this.videoUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  int idSubasta;
  String imageUrl1;
  String imageUrl2;
  String imageUrl3;
  String imageUrl4;
  String imageUrl5;
  String imageUrl6;
  String imageUrl7;
  String imageUrl8;
  String imageUrl9;
  String imageUrl10;
  String videoUrl;
  DateTime createdAt;
  DateTime updatedAt;

  factory MediaSubasta.fromJson(Map<String, dynamic> json) => MediaSubasta(
        idSubasta: int.tryParse(json["idSubasta"].toString()) ?? 0,
        imageUrl1: json["imageUrl1"].toString(),
        imageUrl2: json["imageUrl2"].toString(),
        imageUrl3: json["imageUrl3"].toString(),
        imageUrl4: json["imageUrl4"].toString(),
        imageUrl5: json["imageUrl5"].toString(),
        imageUrl6: json["imageUrl6"].toString(),
        imageUrl7: json["imageUrl7"].toString(),
        imageUrl8: json["imageUrl8"].toString(),
        imageUrl9: json["imageUrl9"].toString(),
        imageUrl10: json["imageUrl10"].toString(),
        videoUrl: json["videoUrl"].toString(),
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "idSubasta": idSubasta,
        "imageUrl1": imageUrl1,
        "imageUrl2": imageUrl2,
        "imageUrl3": imageUrl3,
        "imageUrl4": imageUrl4,
        "imageUrl5": imageUrl5,
        "imageUrl6": imageUrl6,
        "imageUrl7": imageUrl7,
        "imageUrl8": imageUrl8,
        "imageUrl9": imageUrl9,
        "imageUrl10": imageUrl10,
        "videoUrl": videoUrl,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
