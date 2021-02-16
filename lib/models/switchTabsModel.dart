import 'package:flutter/material.dart';

enum TabIndex {
  CAMERA,
  CHATS,
  STATUS,
  CALLS
}

class SwitchTabsModel extends ChangeNotifier {

  TabIndex _currentTabIndex = TabIndex.CHATS;
  TabIndex get currentTabIndex => _currentTabIndex;

  updateTabIndex (TabIndex index) {
    _currentTabIndex = index;
    notifyListeners();
  }
}