import 'package:flutter/material.dart';

enum MessageStatus {
  NONE,
  PENDING,
  SENT,
  DELIVERED,
  READ
}
class MessageModel {
  final String message;
  MessageStatus status;

  MessageModel({ @required this.message, this.status });

  set setMessageStatus (MessageStatus status) => this.status = status;

  MessageModel.fromJSON(Map<String, dynamic> json)
  :message =json['message'], status = MessageStatus.values[json['status']];
  
}