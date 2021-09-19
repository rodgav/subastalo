// To parse this JSON data, do
//
//     final imagesSubastasModel = imagesSubastasModelFromJson(jsonString);

import 'dart:convert';

ImagesSubastasModel imagesSubastasModelFromJson(String str) => ImagesSubastasModel.fromJson(json.decode(str));

String imagesSubastasModelToJson(ImagesSubastasModel data) => json.encode(data.toJson());

class ImagesSubastasModel {
  ImagesSubastasModel({
    required this.imagesSubastas,
  });

  List<ImagesSubasta> imagesSubastas;

  factory ImagesSubastasModel.fromJson(Map<String, dynamic> json) => ImagesSubastasModel(
    imagesSubastas: List<ImagesSubasta>.from(json["images_subastas"].map((x) => ImagesSubasta.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "images_subastas": List<dynamic>.from(imagesSubastas.map((x) => x.toJson())),
  };
}

class ImagesSubasta {
  ImagesSubasta({
    required this.subastaId,
    required this.imageUrl,
  });

  String subastaId;
  String imageUrl;

  factory ImagesSubasta.fromJson(Map<String, dynamic> json) => ImagesSubasta(
    subastaId: json["subastaId"],
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toJson() => {
    "subastaId": subastaId,
    "image_url": imageUrl,
  };
}
