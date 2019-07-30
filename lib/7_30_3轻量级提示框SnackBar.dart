/**
 * 作者： 魔都叛徒 2019/7/30.
 * 邮箱：caoruichun@yeah.net
 * 轻量级提示框SnackBar
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
          child: Text('轻量级提示框SnackBar',style: TextStyle(fontSize: 28.0),),
        ),
        floatingActionButton: new Builder(builder: (BuildContext context){
          return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              print('ddd');
              Scaffold.of(context).showSnackBar(SnackBar(content: Text('显示')),
              );

            },
            shape: new CircleBorder(),
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}