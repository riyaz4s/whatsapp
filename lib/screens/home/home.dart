import 'package:ChatApp/models/switchTabsModel.dart';
import 'package:ChatApp/screens/home/waAppBar.dart';
import 'package:ChatApp/screens/home/waFloatingButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SwitchTabsModel(),
        child: Scaffold(
            appBar: WaAppBar(),
            floatingActionButton: Consumer<SwitchTabsModel>(
              builder: (context, value, child) =>
                  WaFloatingButton(tabIndex: value.currentTabIndex),
            )));
  }
}
