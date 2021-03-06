/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 绘制直线
 */

/*
* TODO drawLine() 画直线
*      drawCircle() 画圆
*      drawOval() 画椭圆
*      drawRect() 画矩形
*      drawPoints() 画点
*      drawArc() 画圆弧
*      Paint() 画笔
*      canvas 画布
* */

import 'package:flutter/material.dart';
import 'dart:math';

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
              child: Center(
                child: Text('绘制直线',style: const TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                  color:Colors.black,
                ),),
              ),
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
      ..color = Colors.black
      ..strokeCap = StrokeCap.square
      ..isAntiAlias = true
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
///重写绘制内容方法
   @override
  void paint(Canvas canvas,Size size){
     //绘制直线
     canvas.drawLine(Offset(20.0,20.0),Offset(300.0,20.0) , _paint);
   }

   ///重写是否需要重绘的
   @override
   bool shouldRepaint(CustomPainter oldDelegate){
     return false;
   }
}