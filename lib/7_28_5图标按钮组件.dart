/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 *图标按钮组件
 */

import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  title: '图标按钮组件',
  home: LayoutDemo(),
));

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('图标按钮组件'),
      ),
      body: Center(
        child: IconButton(
            icon: Icon(Icons.volume_up,size: 48.0,),
            tooltip: '按下操作',
            onPressed: (){
              print('按下操作');
            }
        ),
      ),
    );
  }
}