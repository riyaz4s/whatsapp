import 'package:flutter/material.dart';

class WaAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(100.0);

  final TabController tabController;

  static const List<Widget> _tabs = [
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: "CHATS"),
    Tab(
      text: "STATUS",
    ),
    Tab(
      text: "CALLS",
    ),
  ];
  final List<Widget> _actions = [
    IconButton(
      icon: Icon(Icons.search, color: Color(0xFF9EA5AA)),
      onPressed: () => {},
    ),
    IconButton(
      icon: Icon(Icons.more_vert, color: Color(0xFF9EA5AA)),
      onPressed: () => {},
    )
  ];

  WaAppBar({ @required this.tabController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('WhatsApp', style: TextStyle(color: Color(0xFF9EA5AA))),
      bottom: TabBar(
          controller: tabController,
          indicatorColor: new Color(0xFF07AB96),
          labelColor: new Color(0xFF07AB96),
          unselectedLabelColor: new Color(0xFF9EA5AA),
          tabs: _tabs),
      actions: _actions,
    );
  }
}
