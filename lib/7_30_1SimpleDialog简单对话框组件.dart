/**
 * 作者： 魔都叛徒 2019/7/29.
 * 邮箱：caoruichun@yeah.net
 *SimpleDialog简单对话框组件
 */

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: SimpleDialog(
            title: Text('对话框标题'),
            children: <Widget>[
             SimpleDialogOption(
               onPressed: (){},
               child: Text('第一行'),
             ),
              SimpleDialogOption(
                onPressed: (){},
                child: Text('第二行'),
              )
            ],
          ),
        ),
      ),
    );
  }
}