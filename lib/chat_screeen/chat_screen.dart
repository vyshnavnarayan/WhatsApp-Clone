import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_screeen/chatTile.dart';
import 'package:whatsapp_clone/chat_screeen/models/chat_model.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({super.key});

  List<ChatList> chatsData = [
    ChatList(name: 'Vyshnav',message: 'hi...', isGroup: false, image: 'https://miro.medium.com/max/683/0*JQGt5cN0oZbo4uLV.jpg', updatedAt: '9:00 am'),
    ChatList(name: 'John',message: 'hello', isGroup: false, image: '', updatedAt: '7:00 am'),
    ChatList(name: 'Flutter',message: 'hi', isGroup: true, image: '', updatedAt: '8:30 am'),
    ChatList(name: 'Fam',message: 'hi...', isGroup: true, image: 'https://iotcdn.oss-ap-southeast-1.aliyuncs.com/2020-11/Family-Silhouette-3.jpg', updatedAt: '9:10 am'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context, index) {
        return ChatTile(chatsData: chatsData[index]);
      },
    ));
  }
}

