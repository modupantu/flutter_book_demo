/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 水平列表组件
 */

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = '水平列表组件';
    return MaterialApp(
      title:title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 200.0,
          child: ListView(
//            设置水平方向排列
            scrollDirection: Axis.horizontal,
//            添加子元素
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.lightBlue,
              ),
              Container(
                width: 160.0,
                color: Colors.amber,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
                child: Column(
                  children: <Widget>[
                    Icon(Icons.list),
                    Text(
                      '水平',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0
                      )
                    ),
                    Text(
                        '列表',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0
                        )
                    ),

                  ],
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                width: 160.0,
                color: Colors.black,
              ),
              Container(
                width: 160.0,
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}