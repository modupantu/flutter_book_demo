/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 *
 */
import "package:flutter/material.dart";

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}
List<MessageData> messageData=[
  new MessageData('http://b-ssl.duitang.com/uploads/item/201711/10/20171110225150_ym2jw.jpeg', '一休哥', '二级标题', new DateTime.now(), MessageType.CHAT),
  new MessageData('http://b-ssl.duitang.com/uploads/item/201711/10/20171110225150_ym2jw.jpeg', '一休哥', '二级标题', new DateTime.now(), MessageType.CHAT),
  new MessageData('http://b-ssl.duitang.com/uploads/item/201711/10/20171110225150_ym2jw.jpeg', '一休哥', '二级标题', new DateTime.now(), MessageType.CHAT),
];