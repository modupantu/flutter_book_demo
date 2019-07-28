/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 应用按钮组件-AppBar
 *
 * 应用按钮组件包含 AppBar 和 SliverAppbar
 * 区别：Appbar 位置是固定在应用最上面的，
 *      SliverAppBar 是可以跟随内容滚动的
 */
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title: 'AppBar应用按钮示例',
  home: new LayoutDemo(),
));

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar应用按钮示例'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: (){
              print('搜索');
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: '添加',
            onPressed: (){
              print('添加');
            },
          )
        ],
      ),
    );
  }
}