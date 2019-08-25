/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 动画_淡入淡出
 */
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appTitle = '淡入淡出';
    return new MaterialApp(
      title: appTitle,
      home: new MyHomePage(title:appTitle),
    );
  }
}
class MyHomePage extends StatefulWidget{
  final String title;
  MyHomePage({Key key,this.title}):super(key:key);
  @override
  _MyHomePageState createState()=>new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new AnimatedOpacity(opacity: _visible?1.0:0.0, duration: Duration(
          milliseconds: 1000
        ),
          child: new Container(
            width: 300.0,
            height: 300.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: (){
        setState(() {
          _visible=!_visible;
        });
      },tooltip: '显示隐藏',
      child: new Icon(Icons.flip),),
    );
  }
}