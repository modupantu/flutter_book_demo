/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 *8_25_7canvas 绘制圆弧
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
    //绘制圆弧
   const PI = 3.1415926;
   //定义矩形
    Rect rect1 = Rect.fromCircle(center: Offset(100.0, 0.0),radius: 100.0);
     //画1/2PI弧度的圆弧
    canvas.drawArc(rect1, 0.0, PI/2, true, _paint);
    //画PI弧度的圆弧
    Rect rect2 = Rect.fromCircle(center:Offset(200.0, 150.0),radius: 100.0);
    canvas.drawArc(rect2, 0.0, PI, true, _paint);
  }

  ///重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}