/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 *图片组件
 */

import 'package:flutter/material.dart';

//void main()=> runApp(MyApp());
//
//class MyApp extends StatelessWidget{
//
//
//}

void main(){
  runApp(new MaterialApp(
    title: 'Image demo',
    home: new ImageDemo(),
  ));
}
class ImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Image.network(
        "https://flutter.dev/assets/404/dash_nest-c64796b59b65042a2b40fae5764c13b7477a592db79eaf04c86298dcb75b78ea.png",
        fit: BoxFit.fitWidth,//填充模式
      ),
    );
  }
}