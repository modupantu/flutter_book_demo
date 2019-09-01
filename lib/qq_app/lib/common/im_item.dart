/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 通用列表项实现
 */

import 'package:flutter/material.dart';
import './touch_callback.dart';

class ImItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Icon icon;

  ImItem({Key key, @required this.title, this.imagePath, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      onPressed: () {
        switch (title) {
          case '好友动态':
            Navigator.pushNamed(context, '/friends');
            break;
          case '联系客服':
            break;
        }
      },
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              child: imagePath!=null?Image.asset(imagePath,width: 32.0,height: 32.0,):SizedBox(child: icon,width: 32.0,height: 32.0,),
              margin: const EdgeInsets.only(left: 22.0,right: 20.0),
            ),
            Text(title,style: TextStyle(fontSize: 16.0,color: Color(0xFF353535)),)
          ],
        ),
      ),
    );
  }
}
