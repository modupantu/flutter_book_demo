/**
 * 作者： 魔都叛徒 2019/8/6.
 * 邮箱：caoruichun@yeah.net
 * 列表布局LIstview
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'ListView',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      new ListTile(
        title: new Text('广州市黄埔大道建中路点', style: new TextStyle(
          fontWeight: FontWeight.w400, fontSize: 18.0,
        )),
        subtitle: new Text('广州市黄埔大道建中路3号'),
        leading: new Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      new ListTile(
        title: new Text('广州市黄埔大道建中路点', style: new TextStyle(
          fontWeight: FontWeight.w400, fontSize: 18.0,
        )),
        subtitle: new Text('广州市黄埔大道建中路3号'),
        leading: new Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      new ListTile(
        title: new Text('广州市黄埔大道建中路点', style: new TextStyle(
          fontWeight: FontWeight.w400, fontSize: 18.0,
        )),
        subtitle: new Text('广州市黄埔大道建中路3号'),
        leading: new Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      new ListTile(
        title: new Text('广州市黄埔大道建中路点', style: new TextStyle(
          fontWeight: FontWeight.w400, fontSize: 18.0,
        )),
        subtitle: new Text('广州市黄埔大道建中路3号'),
        leading: new Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      new ListTile(
        title: new Text('广州市黄埔大道建中路点', style: new TextStyle(
          fontWeight: FontWeight.w400, fontSize: 18.0,
        )),
        subtitle: new Text('广州市黄埔大道建中路3号'),
        leading: new Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
    ];
    return new Scaffold(
      appBar: AppBar(
        title: Text(''),

      ),
      body: Center(
        child: new ListView(
          children: list,
        ),
      ),
    );
  }
}