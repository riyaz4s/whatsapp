import 'package:ChatApp/screens/home/tabview/waTabContent.dart';
import 'package:flutter/material.dart';

import '../../../models/switchTabsModel.dart';

class WaTabView extends StatelessWidget {
  final tabController;

  WaTabView({ @required this.tabController });

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: TabIndex.values.map((element) => WaTabContent(
        tabIndex: element,
      )).toList()
    );
  }

}