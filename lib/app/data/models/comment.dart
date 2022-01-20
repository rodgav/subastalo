// To parse this JSON data, do
//
//     final commentModel = commentModelFromJson(jsonString);

import 'dart:convert';

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

class User {
  User({
    required this.id,
    required this.dni,
    required this.idRole,
    required this.idGender,
    required this.idDistrite,
    required this.name,
    required this.email,
    required this.dateBirth,
    required this.phone,
    required this.address,
    required this.coins,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String dni;
  int idRole;
  int idGender;
  String idDistrite;
  String name;
  String email;
  DateTime dateBirth;
  String phone;
  String address;
  String coins;
  DateTime createdAt;
  DateTime updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: int.tryParse(json["id"].toString()) ?? 0,
        dni: json["dni"].toString(),
        idRole: int.tryParse(json["idRole"].toString()) ?? 0,
        idGender: int.tryParse(json["idGender"].toString()) ?? 0,
        idDistrite: json["idDistrite"].toString(),
        name: json["name"].toString(),
        email: json["email"].toString(),
        dateBirth: json["date_birth"] != null
            ? DateTime.parse(json["date_birth"])
            : DateTime.now(),
        phone: json["phone"].toString(),
        address: json["address"].toString(),
        coins: json["coins"].toString(),
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dni": dni,
        "idRole": idRole,
        "idGender": idGender,
        "idDistrite": idDistrite,
        "name": name,
        "email": email,
        "date_birth":
            "${dateBirth.year.toString().padLeft(4, '0')}-${dateBirth.month.toString().padLeft(2, '0')}-${dateBirth.day.toString().padLeft(2, '0')}",
        "phone": phone,
        "address": address,
        "coins": coins,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
