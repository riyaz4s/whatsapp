import 'dart:convert';
import 'package:ChatApp/models/callModel.dart';
import 'package:ChatApp/models/chatModel.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<List<ChatModel>> fetchChats() async {
  try {
    String chatJson = await rootBundle.loadString("assets/chats.json");
    Iterable i = jsonDecode(chatJson);
    List<ChatModel> result =
        List<ChatModel>.from(i.map((model) => ChatModel.fromJson(model)));
    return result;
  } catch (err) {
    print('Caught error: $err');
    return List<ChatModel>.from([]);
  }
}

Future<List<CallModel>> fetchCalls() async {
  try {
    String chatJson = await rootBundle.loadString("assets/calls.json");
    Iterable i = jsonDecode(chatJson);
    List<CallModel> result =
        List<CallModel>.from(i.map((model) => CallModel.fromJson(model)));
    return result;
  } catch (err) {
    print('Caught error: $err');
    return List<CallModel>.from([]);
  }
}
