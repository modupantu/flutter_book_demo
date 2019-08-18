/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 * 透明度处理opacity
 */

import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('透明度处理opacity'),
      ),
      body: new Center(
        child: new Opacity(
          opacity: 0.3,
          child: new Container(
            width: 250.0,
            height: 100.0,
            decoration: new BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              '透明度处理opacity',
              style: TextStyle(
                color: Colors.green,
                fontSize: 28.0
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    title: '透明度处理opacity',
    home: LayoutDemo(),
  ));
}