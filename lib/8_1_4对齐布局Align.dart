/**
 * 作者： 魔都叛徒 2019/8/2.
 * 邮箱：caoruichun@yeah.net
 * 对齐布局Align
 */
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('align'),
      ),
      body: Stack(
        children: <Widget>[
          //            左上
          new Align(
            alignment: new FractionalOffset(0.0, 0.0),
            child: new Image.asset(
              'images/qq.jpg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          //            右上
          new Align(
            alignment: new FractionalOffset(1.0, 0.0),
            child: new Image.asset(
              'images/qq.jpg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          //            水平垂直居中
          new Align(
            alignment: new FractionalOffset(0.5, 0.5),
            child: new Image.asset(
              'images/qq.jpg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          //            左下角
          new Align(
            alignment: new FractionalOffset(0.0, 1.0),
            child: new Image.asset(
              'images/qq.jpg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          //            右下角
          new Align(
            alignment: new FractionalOffset(1.0, 1.0),
            child: new Image.asset(
              'images/qq.jpg',
              width: 128.0,
              height: 128.0,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: '',
    home: LayoutDemo(),
  ));
}
