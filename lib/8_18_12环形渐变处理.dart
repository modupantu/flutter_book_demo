/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 * 环形渐变处理
 */
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('环形渐变处理'),
      ),
      body: Center(
        child: new DecoratedBox(
          decoration: new BoxDecoration(
              gradient: RadialGradient(
                  center: const Alignment(-0.0, -0.0),//中心偏移量
                  radius: 0.50,//圆心半径
                  colors: <Color>[
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.grey,
              ])),
          child: new Container(
            width: 280.0,
            height: 280.0,
            child: Center(
              child: Text(
                '环形渐变处理',
                style: TextStyle(color: Colors.black, fontSize: 28.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: '环形渐变处理',
    home: LayoutDemo(),
  ));
}
