import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/switchTabsModel.dart';
import 'screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: new Color(0xFF232E36),
        accentColor: new Color(0xFF00B09C),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => SwitchTabsModel(),
        child: HomePage(),
      ),
    );
  }
}
