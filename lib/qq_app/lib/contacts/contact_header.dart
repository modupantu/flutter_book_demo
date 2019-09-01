/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 好友列表头
 */

import 'package:flutter/material.dart';
import './contact_item.dart';

class ContactHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ContactItem(titleName: '最新好友',imageName: 'images/icon_addfriend.png',),
      ContactItem(titleName: '公共聊天室',imageName: 'images/icon_groupchat.png',),
    ],);
  }
}