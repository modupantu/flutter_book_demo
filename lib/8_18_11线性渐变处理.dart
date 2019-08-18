/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 * 线性渐变处理
 */
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('LinearGradient线性渐变'),
      ),
      body: new Center(
        child: DecoratedBox(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(1.0, 1.0),
              colors: <Color>[
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.grey,
              ],
            ),
          ),
          child: new Container(
            width: 280.0,
            height: 280.0,
            child: new Center(
              child: Text(
                '线性渐变处理',
                style: TextStyle(color: Colors.black, fontSize: 28.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    title: '线性渐变处理',
    home: new LayoutDemo(),
  ));
}