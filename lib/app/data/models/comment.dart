// To parse this JSON data, do
//
//     final commentModel = commentModelFromJson(jsonString);

import 'dart:convert';

import 'package:subastalo/app/data/models/user.dart';

CommentModel commentModelFromJson(String str) =>
    CommentModel.fromJson(json.decode(str));

String commentModelToJson(CommentModel data) => json.encode(data.toJson());

class CommentModel {
  CommentModel({
    required this.comments,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Comment> comments;
  String status;
  String message;
  int code;

  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        comments: json["comments"] != null
            ? List<Comment>.from(
                json["comments"].map((x) => Comment.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Comment {
  Comment({
    required this.id,
    required this.idUser,
    required this.idSubasta,
    required this.comment,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });

  int id;
  int idUser;
  int idSubasta;
  String comment;
  int state;
  DateTime createdAt;
  DateTime updatedAt;
  User user;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: int.tryParse(json["id"].toString()) ?? 0,
        idUser: int.tryParse(json["idUser"].toString()) ?? 0,
        idSubasta: int.tryParse(json["idSubasta"].toString()) ?? 0,
        comment: json["comment"].toString(),
        state: int.tryParse(json["state"].toString()) ?? 0,
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idUser": idUser,
        "idSubasta": idSubasta,
        "comment": comment,
        "state": state,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user": user.toJson(),
      };
}
