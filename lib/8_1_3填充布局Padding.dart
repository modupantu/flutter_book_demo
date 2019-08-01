/**
 * 作者： 魔都叛徒 2019/8/1.
 * 邮箱：caoruichun@yeah.net
 * 填充布局Padding
 */
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'padding填充布局',
      home: new LayoutDemo(),
    ));
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('padding填充布局'),
      ),
      body: new Center(
        child: new Container(
          width: 300.0,
          height: 300.0,
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.blue,
              width: 8.0
            )
          ),
          child: new Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.deepPurple,
                width: 8.0,
              )
            ),
            child: new FlutterLogo(),
          ),
        ),
      ),
    );
  }
}