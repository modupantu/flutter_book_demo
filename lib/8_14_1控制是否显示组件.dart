/**
 * 作者： 魔都叛徒 2019/8/14.
 * 邮箱：caoruichun@yeah.net
 * offstage 控制是否显示组件
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appTitle = "offstage控制是否显示组件示例";
    return new MaterialApp(
      title: appTitle,
      home: MyHomePage(title:appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  MyHomePage({Key key,this.title}):super(key:key);
  @override
  _MyHomePageState createState()=> new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  bool offstage = true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
        child: new Offstage(
          offstage: offstage,
          child: Text(
            '我出来了',
            style: TextStyle(
                fontSize: 36.0
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: (){
//        设置是否显示文本组件
      setState(() {
        offstage =!offstage;
      });
      },
      tooltip: '显示隐藏',child: Icon(Icons.flip),),
    );
  }
}