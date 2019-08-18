/**
 * 作者： 魔都叛徒 2019/8/19.
 * 邮箱：caoruichun@yeah.net
 * 旋转盒子RotatedBox
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '旋转盒子RotatedBox',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '旋转盒子RotatedBox',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: RotatedBox(
            quarterTurns: 3, //旋转次数 一次为90°
            child: Text(
              '旋转盒子RotatedBox',
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ),
      ),
    );
  }
}
