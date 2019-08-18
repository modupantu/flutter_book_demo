/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 * 边框阴影处理 boxShadow
 */

import 'package:flutter/material.dart';
class layoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('boxShadow'),

      ),
      body: new Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              new BoxShadow(
                color: Colors.grey,//阴影颜色
                blurRadius: 8.0,//模糊值
                spreadRadius: 8.0,//扩展模糊半径
                offset: Offset(-1.0, 1.0)//偏移量
              )
            ]
          ),
          child: Text('boxshadow',style: TextStyle(
            color: Colors.black,
            fontSize: 28.0
          ),),
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    title: 'boxshadow',
    home: layoutDemo(),
  ));
}