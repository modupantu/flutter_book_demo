/**
 * 作者： 魔都叛徒 2019/8/19.
 * 邮箱：caoruichun@yeah.net
 * 裁剪处理Clip_圆形裁剪
 */

/*
* todo ClipOval 圆形裁剪
*      ClipRRect 圆角矩形裁剪
*      ClipRect 矩形裁剪
*      ClipPath 路径裁剪
*        属性：clipper 裁剪路径
*             clipBehavior 裁剪方式
* */

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '裁剪处理Clip_圆形裁剪',
      home: Scaffold(
        appBar: AppBar(
          title: Text('裁剪处理Clip_圆形裁剪',style: TextStyle(
            color:Colors.white,
          ),),
        ),
        body: Center(
          child: new ClipOval(
            child: new SizedBox(
              width: 300.0,
              height: 300.0,
              child: new Image.asset(
                'images/qq.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}