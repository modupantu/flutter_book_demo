/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 *8_25_8canvas 绘制路径 Path
 */
/**
 * TODO Path 路径
 *  moveTo 将路径起始点移动到指定的位置
 *  lineTo 从当前位置连接指定点
 *  arcTo 曲线
 *  conicTo 贝济埃曲线
 *  close 关闭路径 连接路径的起点
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
//   新建一个path 移动到一个位置，然后画各种线
  Path path = new Path()..moveTo(100.0,100.0);
  path.lineTo(200.0,300.0);
  path.lineTo(100.0,200.0);
  path.lineTo(150.0,250.0);
  path.lineTo(150.0,500.0);
  canvas.drawPath(path, _paint);
  }

  ///重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return false;
  }
}