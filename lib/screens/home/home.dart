import 'package:ChatApp/models/switchTabsModel.dart';
import 'package:ChatApp/screens/home/tabview/waTabView.dart';
import 'package:ChatApp/screens/home/waAppBar.dart';
import 'package:ChatApp/screens/home/waFloatingButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/switchTabsModel.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this,
        initialIndex: TabIndex.CHATS.index,
        length: TabIndex.values.length);
    _tabController.addListener(() {
      Provider.of<SwitchTabsModel>(context, listen: false)
          .updateTabIndex(TabIndex.values[_tabController.index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaAppBar(
          tabController: _tabController,
        ),
        body: WaTabView(
          tabController: _tabController,
        ),
        floatingActionButton: Consumer<SwitchTabsModel>(
          builder: (context, value, child) =>
              WaFloatingButton(tabIndex: value.currentTabIndex),
        ));
  }
}
