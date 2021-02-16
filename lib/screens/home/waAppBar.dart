import 'package:ChatApp/models/switchTabsModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WaAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _WaAppBarState createState() => _WaAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(100.0);
}

class _WaAppBarState extends State<WaAppBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this, initialIndex: TabIndex.CHATS.index, length: _tabs.length);
    _tabController.addListener(() {
      Provider.of<SwitchTabsModel>(context, listen: false)
          .updateTabIndex(TabIndex.values[_tabController.index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('WhatsApp', style: TextStyle(color: Color(0xFF9EA5AA))),
      bottom: TabBar(
          controller: _tabController,
          indicatorColor: new Color(0xFF07AB96),
          labelColor: new Color(0xFF07AB96),
          unselectedLabelColor: new Color(0xFF9EA5AA),
          tabs: _tabs),
      actions: _actions,
    );
  }
}
