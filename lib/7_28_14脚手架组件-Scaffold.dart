/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 脚手架组件-Scaffold
 */

import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    title: '脚手架组件-Scaffold',
    home: new LayoutDemo(),
  )
);
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      头部元素，比如左侧返回按钮， 中间标题，右侧菜单
      appBar: AppBar(
        title: Text('脚手架组件-Scaffold'),
      ),
//      视图内容区域
      body: Center(
        child: Text('Scaffold'),
      ),
//      底部导航栏
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0,),
      ),
//      添加FAB按钮
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('1111');
        },
        tooltip: '添加',
        child: Icon(Icons.add),
      ),
//      FAB按钮居中展示
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}