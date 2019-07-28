/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 容器组件 Container
 * 加 一个边框及底色
 */
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例'),
        ),
        body: Center(
//          添加容器
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.grey,
//              设置四个边框样式
            border: new Border.all(
              color: Colors.deepOrange,//边框颜色
              width: 8.0,
            ),
              borderRadius: const BorderRadius.all(const Radius.circular(50.0))
            ),
          ),
        ),
      ),
    );
  }
}

