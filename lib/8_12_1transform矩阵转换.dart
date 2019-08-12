/**
 * 作者： 魔都叛徒 2019/8/12.
 * 邮箱：caoruichun@yeah.net
 * 矩阵转换（transform）
 */
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Container(
          color: Colors.orange,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.rotationZ(0.5),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color:Colors.green,
              child: const Text('trnasform矩阵转换'),
            ),
          ),
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    title: '',
    home: LayoutDemo(),
  ));
}