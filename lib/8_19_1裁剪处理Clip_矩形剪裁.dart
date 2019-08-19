/**
 * 作者： 魔都叛徒 2019/8/19.
 * 邮箱：caoruichun@yeah.net
 *  裁剪处理Clip_矩形剪裁
 */
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '裁剪处理Clip_矩形剪裁',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '裁剪处理Clip_矩形剪裁',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: ClipRect(
            clipper: new RectClipper(),//自定义clipper
            child: new SizedBox(
              width: 300.0,
              height: 300.0,
              child: Image.asset('images/qq.jpg',fit: BoxFit.fill,),
            ),
          ),
        ),
      ),
    );
  }
}

class RectClipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size){
    return new Rect.fromLTRB(100.0, 100.0, size.width-100.0,size.height-100.0);
  }
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper){
    return true;
  }
}
