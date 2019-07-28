/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 *路由-MaterialApp
 */

import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
//  这是整个应用的主组件
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: new MyHomePage(),
      title: '路由',
      routes: {
        '/first':(BuildContext context) => FirstPage(),//添加路由
        '/second':(BuildContext context) => SecondPage(),
      },
      initialRoute: '/first',//初始化路由页面为/first页面
    );
  }
}

//这是一个可改变的Widget
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由'),
      ),
      body: Center(
        child: Text('主页',style: TextStyle(fontSize: 28.0),),
      ),
    );
  }
}
//这是第一个页面
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是第一页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
//            跳转到第二个页面
          Navigator.pushNamed(context, '/second');
          },
          child: Text(
            '这是第一页',
            style: TextStyle(
            fontSize: 28.0
          ),),
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是第二个页面'),

      ),
      body: Center(
        child: RaisedButton(
          child: Text('这是第二个页面',style: TextStyle(
            fontSize: 20.0
          ),),
          onPressed: (){
            Navigator.pushNamed(context, '/first');

          },
        ),
      ),
    );
  }
}