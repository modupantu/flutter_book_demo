/**
 * 作者： 魔都叛徒 2019/8/19.
 * 邮箱：caoruichun@yeah.net
 * 裁剪处理Clip_路径裁剪
 */
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '裁剪处理Clip_路径裁剪',
      home: Scaffold(
        appBar: AppBar(
          title: Text('裁剪处理Clip_路径裁剪',style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: new ClipPath(
            clipper: new TriangleCliper(),
            child: SizedBox(
              width: 100.0,
              height: 100.0,
              child: new Image.asset('images/qq.jpg',fit: BoxFit.fill,),
            ),
          ),
        ),
      ),
    );
  }
}
//自定义三角形
class TriangleCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    Path path = new Path();
    path.moveTo(50.0, 50.0);
    path.lineTo(50.0, 10.0);
    path.lineTo(100.0, 50.0);
    path.close();
    return path;
  }
//  重写是否重新裁剪
  @override
  bool shouldReclip(TriangleCliper oldClipper){
    return true;
  }
}