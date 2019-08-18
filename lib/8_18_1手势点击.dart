/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 *  GestureDetector手势 点击onTap
 */
/*
TODO onTap 点击屏幕
     onTapCancel 此次点击事件结束，onTapDown 不会在产生点击事件
     onDoubleTap 用户快速连续两次在同一个地方点击屏幕
     onLongPress 长时间保持与相同位置的屏幕接触
     onVerticalDragStart 与屏幕接触，可能会开始垂直移动
     onVerticalDragUpdate 与屏幕接触并垂直移动的指针在垂直方向上移动
     onVerticalDragEnd 与屏幕接触并垂直移动的指针不再与屏幕接触，并且在停止接触屏幕时以特定速度移动垂直拖到
     onHorizontalDragStart 与屏幕接触可能开始水平移动
     onHorizontalDragUpdate 与屏幕接触并水平移动的指针在水平方向上移动
     onHorizontalDragEnd 与屏幕接触并水平移动的指针不再与屏幕接触，并且在停止接触屏幕时以特定速度移动水平拖到
*/


import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: '按下处理Demo',
    home: new MyApp(),
  ));
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
//    被触摸的组件放在GestureDetector里面
    return new GestureDetector(
      onTap: (){
        final snackBar = new SnackBar(content: new Text('你以按下'),);
        Scaffold.of(context).showSnackBar(snackBar);
      },
//      添加容器接受触摸动作
    child: new Container(
      padding: new EdgeInsets.all(12.0),
      decoration: new BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: new BorderRadius.circular(10.0)
      ),
      child: new Text('测试按钮'),
    ),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('按下处理Demo'),
      ),
      body: new Center(child: new MyButton(),),
    );
  }
}