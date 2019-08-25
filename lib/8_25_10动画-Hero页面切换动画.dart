/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * hero 页面切换动画
 */

import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    title: '',
    home: new FirstPage(),
  ));
}
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(''),
      ),
      body: new GestureDetector(
        child: new Hero(
            tag: '第一张图片',
            child: new Image.asset('images/qq.jpg'),
        ),
        onTap: (){
          Navigator.push(context,new MaterialPageRoute(builder: (_){
            return new SecondPage();
          }));
        },
      ),
    );
  }
}
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('第二张图片'),
      ),
      body: new GestureDetector(
        child: new Hero(tag: '第二张图片', child: new Image.asset('images/qq.jpg')),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}