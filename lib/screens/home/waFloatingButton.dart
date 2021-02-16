import 'package:ChatApp/models/switchTabsModel.dart';
import 'package:flutter/material.dart';

class WaFloatingButton extends StatelessWidget {
  final TabIndex tabIndex;

  WaFloatingButton({@required this.tabIndex});

  Widget getFloatingButtonForTab(TabIndex t) {
    switch (t) {
      case TabIndex.CHATS:
        return FloatingActionButton(
          backgroundColor: new Color(0xFF00AF9E),
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => {},
        );
      case TabIndex.STATUS:
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: new Color(0xFF232E36),
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: () => {},
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: new Color(0xFF00AF9E),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              onPressed: () => {},
            ),
          ],
        );
      case TabIndex.CALLS:
        return FloatingActionButton(
          backgroundColor: new Color(0xFF00AF9E),
          child: Icon(
            Icons.add_ic_call_rounded,
            color: Colors.white,
          ),
          onPressed: () => {},
        );
      default:
        return new Container(width: 0, height: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return getFloatingButtonForTab(tabIndex);
  }
}
