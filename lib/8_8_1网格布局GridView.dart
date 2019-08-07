/**
 * 作者： 魔都叛徒 2019/8/8.
 * 邮箱：caoruichun@yeah.net
 * 网格布局GridView
 */

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: '网格布局GridView',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //使用 网格布局GridView
    List<Container> _buildgridTitleList(int count){
      return new List<Container>.generate(
        count,
          (int index) => new Container(
            child: new Image.asset('images/qq.jpg'),
          )
      );
    }
//    渲染GridView
  Widget buildGrid(){
      return GridView.extent(
        maxCrossAxisExtent: 150.0,//次轴的宽度
        padding: const EdgeInsets.all(4.0),//内边距
        mainAxisSpacing: 4.0,//主轴间距
        crossAxisSpacing: 4.0,//次轴间距
        children: _buildgridTitleList(9),
      );
  }
  return new Scaffold(
    appBar: AppBar(
      title: Text(''),
    ),
    body: new Center(
      child:buildGrid() ,
    ),
  );
  }
}