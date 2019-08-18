/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 * 装饰盒子BoxDecoratedBox
 */
import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('装饰盒子BoxDecoratedBox'),
      ),
      body: new Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(image: ExactAssetImage('images/qq.jpg'),fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    title: '装饰盒子BoxDecoratedBox',
    home: LayoutDemo(),
  ));
}