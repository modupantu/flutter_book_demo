/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 聊天消息列表实现
 */

import 'package:flutter/material.dart';
import './message_data.dart';
import './message_item.dart';
class MessagePage extends StatefulWidget{
  @override
  MessagePageState createState()=>new MessagePageState();
}
class MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: messageData.length,
          itemBuilder: (BuildContext context,int index){
            return new MessageItem(messageData[index]);
          }),
    );
  }
}