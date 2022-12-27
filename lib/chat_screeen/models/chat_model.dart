// To parse this JSON data, do
//
//     final chatList = chatListFromJson(jsonString);

import 'dart:convert';

ChatList chatListFromJson(String str) => ChatList.fromJson(json.decode(str));

String chatListToJson(ChatList data) => json.encode(data.toJson());

class ChatList {
    ChatList({
        this.name,
        this.message,
        this.updatedAt,
        this.image,
        this.isGroup,
    });

    String? name;
    String? message;
    String? updatedAt;
    String? image;
    bool? isGroup;

    factory ChatList.fromJson(Map<String, dynamic> json) => ChatList(
        name: json["name"],
        message: json["message"],
        updatedAt: json["updatedAt"],
        image: json["image"],
        isGroup: json["isGroup"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "message": message,
        "updatedAt": updatedAt,
        "image": image,
        "isGroup": isGroup,
    };
}
