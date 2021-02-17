import 'package:ChatApp/models/messageModel.dart';
import 'package:flutter/material.dart';

class ChatModel {
  final MessageModel message;
  final String name;
  bool read = true;
  String avatarUrl;
  DateTime date;

  ChatModel(
      {@required this.name,
      this.read,
      this.avatarUrl,
      this.message,
      this.date});

  set toggleRead(bool read) => this.read = read;
  set setAvatarUrl(String url) => this.avatarUrl = url;

  ChatModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        read = json['read'],
        avatarUrl = json['avatarUrl'],
        date = DateTime.parse(json['date']),
        message = MessageModel.fromJSON(json['message']);
}
