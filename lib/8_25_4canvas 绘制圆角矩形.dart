/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 8_25_4canvas 绘制圆角矩形
 */
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
                child: Text('绘制圆角矩形',style: const TextStyle(
                  fontSize: 18.0,
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
    ..color = Colors.green
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.stroke;//画笔样式有填充。PaintingStyle.stroke画笔没有填充
  ///重写绘制内容方法
  @override
  void paint(Canvas canvas,Size size){
    //绘制圆角矩形
   Rect rect = Rect.fromCircle(center: Offset(200.0, 200.0),radius: 100.0);
   RRect rrect = RRect.fromRectAndRadius(rect, Radius.circular(20.0));
   canvas.drawRRect(rrect, _paint);
  }

  ///重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}