/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 *8_25_6canvas 绘制多个点
 */

import 'package:flutter/material.dart';
import 'dart:ui';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),

        ),
        body: Center(

          child: SizedBox(
            width: 500.0,
            height: 500.0,
            child: CustomPaint(
              painter:  LinePainter(),

            ),
          ),
        ),
      ),
    );
  }
}
// 继承自CustomPainter 并且实现 CustomPainter 里面的paint 和 shouldRepaint方法
class LinePainter extends CustomPainter{
  //定义画笔
  Paint _paint = new Paint()
    ..color = Colors.green
    ..strokeCap = StrokeCap.round//roun圆点 square 方点
    ..isAntiAlias = true
    ..strokeWidth = 20.0
    ..style = PaintingStyle.stroke;//画笔样式有填充。绘制点无效
  ///重写绘制内容方法
  @override
  void paint(Canvas canvas,Size size){
    //绘制点
    canvas.drawPoints(
      //PointMode 三个类型  points 点,lines隔点连接线,polygon 相邻连接线
        PointMode.points,
        [
          Offset(50.0,60.0),
          Offset(40.0,90.0),
          Offset(100.0,100.0),
          Offset(300.0,350.0),
          Offset(400.0,80.0),
          Offset(200.0,200.0),
        ],
        _paint..color=Colors.grey);
  }

  ///重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}