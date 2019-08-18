/**
 * 作者： 魔都叛徒 2019/8/19.
 * 邮箱：caoruichun@yeah.net
 * 裁剪处理Clip_圆角矩形裁剪
 */
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '裁剪处理Clip_圆角矩形裁剪',
      home: Scaffold(
        appBar: AppBar(
          title: Text('裁剪处理Clip_圆角矩形裁剪'),
        ),
        body: Center(
          child: new ClipRRect(
            borderRadius:
                new BorderRadius.all(new Radius.circular(30.0)), //圆角弧度，值越大弧度越大
            child: new SizedBox(
              width: 300.0,
              height: 300.0,
              child: new Image.asset(
                'images/qq.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
