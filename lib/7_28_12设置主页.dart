/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 设置主页MaterialApp
 */

import "package:flutter/material.dart";

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
//  整个应用的主组件
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyhomePage(),
      title: 'MaterialApp',
    );
  }
}

class MyhomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyhomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置主页MaterialApp'),
      ),
      body: Center(
        child: Text('home'),
      ),
    );
  }
}