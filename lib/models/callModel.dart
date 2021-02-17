import 'package:flutter/material.dart';

enum CallType {
  AUDIO,
  VIDEO
}
class CallModel {
  final String name;
  CallType type;
  bool incoming;
  DateTime date;
  String avatarUrl;


  CallModel(
      {@required this.name,
      this.incoming,
      this.avatarUrl,
      this.type,
      this.date});

  set toggleIncoming(bool incoming) => this.incoming = incoming;
  set setAvatarUrl(String url) => this.avatarUrl = url;

  CallModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        incoming = json['incoming'],
        avatarUrl = json['avatarUrl'],
        type = CallType.values[json['type']],
        date = DateTime.parse(json['date']);
}
