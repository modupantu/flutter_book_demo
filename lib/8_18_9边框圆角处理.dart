/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 *边框圆角处理
 */

/*
* todo border：Border.all 所有方向
*      EdgeInsets.all() 所有方向
*      EdgeInsets.only(left,top,right,bottom)分别定义各个方向的边框
*      EdgeInsets.symmetric(vertical,horizontal) 自定义水平，垂直方向边框
*      EdgeInsets。fromWindowPadding(ui.WindowPadding padding, double devicePixelRatio)根据机型屏幕尺寸定义
* */

import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('边框圆角处理'),

      ),
      body: new Center(
        child: Container(
          width: 260.0,
          height: 260.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border:Border.all(color: Colors.green,width: 4.0),
            borderRadius: BorderRadius.circular(36.0),
            image: DecorationImage(image: ExactAssetImage('images/qq.jpg'),
            fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    title: '边框圆角处理',
    home: new LayoutDemo(),
  ));
}