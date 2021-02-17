import 'package:ChatApp/api_client/api.dart';
import 'package:ChatApp/models/callModel.dart';
import 'package:ChatApp/screens/home/tabview/callsPage/callTile.dart';
import 'package:flutter/material.dart';

class CallList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CallListState();
  }
}

class CallListState extends State<CallList> {
  Future<List<CallModel>> futureCalls;

  void initState() {
    super.initState();
    futureCalls = fetchCalls();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CallModel>>(
      future: futureCalls,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            color: Color(0xFF101E25),
            child: ListView.builder(
              itemExtent: 80,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [CallTile(call: snapshot.data[index]), Divider( indent: 80.0 )],
                );
              },
            ),
          );
        } else {
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()]);
        }
      },
    );
  }
}
