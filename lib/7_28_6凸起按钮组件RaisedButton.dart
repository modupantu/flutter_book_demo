/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 *凸起按钮组件RaisedButton
 */
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title: '凸起按钮组件',
  home: tuqiBottomDemo(),
));

class tuqiBottomDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title:Text( '凸起按钮组件'),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: (){
//          按下事件
        },
          child: new Text('凸起按钮组件'),
        ),
      ),
    );
  }
}