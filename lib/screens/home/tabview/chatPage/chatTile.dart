import 'package:ChatApp/models/chatModel.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final ChatModel chat;
  ChatTile({@required this.chat});

  int calculateDifference(DateTime date) {
    DateTime now = DateTime.now();
    return DateTime(date.year, date.month, date.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  String parseDateTime(DateTime date) {
    int diff = calculateDifference(date);
    if (diff == 0) {
      return DateFormat.Hm().format(date);
    } else if (diff == -1) {
      return "Yesterday";
    } else {
      return DateFormat.yMd().format(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(chat.avatarUrl),
        backgroundColor: Colors.transparent,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(chat.name, overflow: TextOverflow.ellipsis), Text(parseDateTime(chat.date), textScaleFactor: 0.75,)]
        ),
      subtitle: Text(chat.message.message, overflow: TextOverflow.ellipsis),
    );
  }
}
