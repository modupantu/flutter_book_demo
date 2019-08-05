/**
 * 作者： 魔都叛徒 2019/8/5.
 * 邮箱：caoruichun@yeah.net
 * 百分比布局 FractionallySizedBox
 */
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: '',
    home: LayoutDemo(),
  ));
}

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        color: Colors.blueGrey,
        height: 200.0,
        width: 200.0,
        child: FractionallySizedBox(
          alignment: Alignment.topLeft,
          widthFactor: 0.5,
          heightFactor: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}