/**
 * 作者： 魔都叛徒 2019/7/27.
 * 邮箱：caoruichun@yeah.net
 * 自定义主题
 */
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appName = '自定义主题';
    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightGreen[600],
        accentColor: Colors.orange[200],
      ),
      home:new MyHomePage(
        title:appName
      )
    );
  }
}

class MyHomePage extends StatelessWidget{
  final String title;
  MyHomePage({Key key,@required this.title}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
        body:new Center(
          child: new Container(
//            获取主题的accentColor
            color: Theme.of(context).accentColor,
            child: new Text(
              '带背景颜色的文本组件',
              style:Theme.of(context).textTheme.title,
            ),
          ),
        ),
      floatingActionButton: new Theme(
          data:Theme.of(context).copyWith(accentColor: Colors.blue),
          child:new FloatingActionButton(onPressed: null,
            child: new Icon(Icons.computer),
          )
      ),
    );
  }
}