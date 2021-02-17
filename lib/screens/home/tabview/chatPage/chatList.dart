import 'package:ChatApp/api_client/fetchChat.dart';
import 'package:ChatApp/models/chatModel.dart';
import 'package:ChatApp/screens/home/tabview/chatPage/chatTile.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatListState();
  }
}
class ChatListState extends State<ChatList> {

 Future<List<ChatModel>> futureChats;

  void initState() {
    super.initState();
    futureChats = fetchChats();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ChatModel>>(
      future: futureChats,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return ListView.builder(
            itemExtent: 80,
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
                return ChatTile(chat: snapshot.data[index]);
            },
          );
        } else {
          return CircularProgressIndicator();
        }
        
      },

    );
  }

}