/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 好友列表数据
 */
import 'package:flutter/material.dart';
class ContactVO {
  String seationKey;
  String name;
  String avatarUrl;

  ContactVO({@required this.seationKey, this.name, this.avatarUrl});
}

List<ContactVO> contactData = [
  new ContactVO(
      seationKey: 'A',
      name: 'A张三0',
      avatarUrl:
          'http://b-ssl.duitang.com/uploads/item/201712/22/20171222223729_d8HCB.jpeg'),
  new ContactVO(
      seationKey: 'A',
      name: 'A张三1',
      avatarUrl:
          'http://b-ssl.duitang.com/uploads/item/201712/22/20171222223729_d8HCB.jpeg'),
  new ContactVO(
      seationKey: 'B',
      name: 'B张三',
      avatarUrl:
          'http://b-ssl.duitang.com/uploads/item/201712/22/20171222223729_d8HCB.jpeg'),
  new ContactVO(
      seationKey: 'C',
      name: 'C张三',
      avatarUrl:
          'http://b-ssl.duitang.com/uploads/item/201712/22/20171222223729_d8HCB.jpeg'),
  new ContactVO(
      seationKey: 'D',
      name: 'Dd张三',
      avatarUrl:
          'http://b-ssl.duitang.com/uploads/item/201712/22/20171222223729_d8HCB.jpeg')
];
