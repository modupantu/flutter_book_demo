/**
 * 作者： 魔都叛徒 2019/8/4.
 * 邮箱：caoruichun@yeah.net
 *  TODO OverflowBox溢出父容器显示
 */

import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1'),

      ),
      body: Container(
        color: Colors.red,
        width: 200.0,
        height: 200.0,
        padding: EdgeInsets.all(50.0),
        child: OverflowBox(//溢出父容器显示maxWidth,maxHeight
          alignment: Alignment.topLeft,
          maxWidth: 400.0,
          maxHeight: 400.0,
          child: Container(
            color: Colors.blue,
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    title: '',
    home: LayoutDemo(),
  ));
}