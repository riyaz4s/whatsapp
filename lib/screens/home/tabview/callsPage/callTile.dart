import 'package:ChatApp/models/callModel.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final CallModel call;
  CallTile({@required this.call});

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
      contentPadding: EdgeInsets.all(8.0),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(call.avatarUrl),
        backgroundColor: Colors.transparent,
      ),
      title: Text(call.name, overflow: TextOverflow.ellipsis),
      subtitle: Text(DateFormat('dd MMMM, hh:mm').format(call.date)),
      trailing: call.type == CallType.AUDIO ? Icon(Icons.phone, color: Color(0xFF00AF9D) ): Icon(Icons.videocam, color: Color(0xFF00AF9D)),
    );
  }
}
