import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_screeen/chat_details.dart';
import 'package:whatsapp_clone/chat_screeen/models/chat_model.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.chatsData,
  }) : super(key: key);

  final ChatList chatsData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatDetails(chatsDetail: chatsData),
            ));
      },
      leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: (chatsData.image == '')
              ? NetworkImage((!chatsData.isGroup!)
                  ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL9sqiich1IS50oUYm677xwB9QKRy_3hs-Eg&usqp=CAU'
                  : 'https://lh3.googleusercontent.com/ABlX4ekWIQimPjZ1HlsMLYXibPo2xiWnZ2iny1clXQm2IQTcU2RG0-4S1srWsBQmGAo')
              : NetworkImage(chatsData.image!)),
      title: Text(chatsData.name!),
      subtitle: Text(chatsData.message!),
      trailing: Text(chatsData.updatedAt!),
    );
  }
}
