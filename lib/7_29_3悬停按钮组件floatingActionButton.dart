/**
 * 作者： 魔都叛徒 2019/7/29.
 * 邮箱：caoruichun@yeah.net
 * 悬停按钮组件 floatingActionButton
 */

import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'floatingActionButton',
      home: Scaffold(
        appBar: AppBar(
          title: Text('floatingActionButton'),
        ),
        body: Center(
          child: Text('',style: TextStyle(fontSize: 28.0),),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context){
          return FloatingActionButton(
            child: const Icon(Icons.add),
//            提示信息
            tooltip: '请点击floatingActionButton',
//            前景色白色
            foregroundColor: Colors.white,
//            背景色
            backgroundColor: Colors.blue,
//            未点击阴影值
            elevation: 7.0,
//            点击阴影值
            highlightElevation: 14.0,
            onPressed: (){
//              点击回调事件
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('点击了floatingActionButton')));
            },
            mini: false,
//            圆形边
          shape: CircleBorder(),
            isExtended: false,
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}