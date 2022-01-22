// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

import 'package:subastalo/app/data/models/user.dart';

MessageModel messageModelFromJson(String str) =>
    MessageModel.fromJson(json.decode(str));

String messageModelToJson(MessageModel data) => json.encode(data.toJson());

class MessageModel {
  MessageModel({
    required this.messages,
    required this.status,
    required this.message,
    required this.code,
  });

  List<Message> messages;
  String status;
  String message;
  int code;

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
        messages: json["messages"] != null
            ? List<Message>.from(
                json["messages"].map((x) => Message.fromJson(x)))
            : [],
        status: json["status"].toString(),
        message: json["message"].toString(),
        code: int.tryParse(json["code"].toString()) ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "code": code,
      };
}

class Message {
  Message({
    required this.id,
    required this.idSender,
    required this.idReceiver,
    required this.title,
    required this.message,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
    required this.sender,
    required this.receiver,
  });

  int id;
  int idSender;
  int idReceiver;
  String title;
  String message;
  int state;
  DateTime createdAt;
  DateTime updatedAt;
  User sender;
  User receiver;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: int.tryParse(json["id"].toString()) ?? 0,
        idSender: int.tryParse(json["idSender"].toString()) ?? 0,
        idReceiver: int.tryParse(json["idReceiver"].toString()) ?? 0,
        title: json["title"].toString(),
        message: json["message"].toString(),
        state: int.tryParse(json["state"].toString()) ?? 0,
        createdAt: json["created_at"] != null
            ? DateTime.parse(json["created_at"])
            : DateTime.now(),
        updatedAt: json["updated_at"] != null
            ? DateTime.parse(json["updated_at"])
            : DateTime.now(),
        sender: User.fromJson(json["sender"]),
        receiver: User.fromJson(json["receiver"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idSender": idSender,
        "idReceiver": idReceiver,
        "title": title,
        "message": message,
        "state": state,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "sender": sender.toJson(),
        "receiver": receiver.toJson(),
      };
}
