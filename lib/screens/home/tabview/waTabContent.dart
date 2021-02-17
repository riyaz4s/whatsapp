import 'package:ChatApp/screens/home/tabview/callsPage/callList.dart';
import 'package:ChatApp/screens/home/tabview/chatPage/chatList.dart';
import 'package:flutter/material.dart';

import '../../../models/switchTabsModel.dart';

class WaTabContent extends StatelessWidget {
  
  final TabIndex tabIndex;
  WaTabContent({ @required this.tabIndex });


  @override
  Widget build(BuildContext context) {
    switch(tabIndex) {
      case TabIndex.CAMERA:
        return Icon(Icons.warning_amber_rounded);
      case TabIndex.CHATS:
        return ChatList();
      case TabIndex.STATUS:
        return Icon(Icons.warning_amber_rounded);
      case TabIndex.CALLS:
        return CallList();
      default:
        return new Container(width: 0, height: 0);
    }
  }
  
  }