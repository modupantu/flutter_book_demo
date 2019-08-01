/*
 * 作者： 魔都叛徒 2019/8/1.
 * 邮箱：caoruichun@yeah.net
 * 基础布局处理_容器布局（container）
 */

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Container布局容器示例',
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//       返回一个container对象
    Widget container = new Container(
//    添加装饰效果
      decoration: BoxDecoration(color: Colors.grey),
//      子元素指定一个垂直水平嵌套布局的组件
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
//            使用Expanded 防止内容溢出
              new Expanded(
                  child: Container(
                width: 150.0,
                height: 150.0,
//            边框
                decoration: new BoxDecoration(
                  border: new Border.all(width: 10.0, color: Colors.blueGrey),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                margin: EdgeInsets.all(4.0),
                child: Image.asset('images/qq.jpg'),
              )),
              new Expanded(
                  child: Container(
                width: 150.0,
                height: 150.0,
//            边框
                decoration: new BoxDecoration(
                  border: new Border.all(width: 10.0, color: Colors.blueGrey),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                margin: EdgeInsets.all(4.0),
                child: Image.asset('images/qq.jpg'),
              )),
            ],
          ),
          new Row(
            children: <Widget>[
//            使用Expanded 防止内容溢出
              new Expanded(
                  child: Container(
                width: 150.0,
                height: 150.0,
//            边框
                decoration: new BoxDecoration(
                  border: new Border.all(width: 10.0, color: Colors.blueGrey),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                margin: EdgeInsets.all(4.0),
                child: Image.asset('images/qq.jpg'),
              )),
              new Expanded(
                  child: Container(
                width: 150.0,
                height: 150.0,
//            边框
                decoration: new BoxDecoration(
                  border: new Border.all(width: 10.0, color: Colors.blueGrey),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                margin: EdgeInsets.all(4.0),
                child: Image.asset('images/qq.jpg'),
              )),
            ],
          )
        ],
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        title: new AppBar(
          title: Text('Container'),
        ),
      ),
      body: container,
    );
  }
}
