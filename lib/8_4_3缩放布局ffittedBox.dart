/**
 * 作者： 魔都叛徒 2019/8/4.
 * 邮箱：caoruichun@yeah.net
 * 缩放布局ffittedBox
 */

// BoxFit.none 没有任何填充模式
// BoxFit.fill 不按照宽高比填充，内容不会超过容器范围
// BoxFit.contain 按宽高等比填充模式。内容不会超过容器范围
// BoxFit.cover 按原始尺寸填充整个容器模式。内容会超过容器范围
// BoxFit.width/height 按宽/高填充整个容器模式。内容不会超过容器范围
// BoxFit.scaleDown 会根据情况缩小范围，有时和BoxFit.contain 一样，有时和BoxFit.none一样。内容不会超过容器范围
// alignment: 设置对齐方式 默认的属性是Alignment.center 居中显示child


import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('缩放布局ffittedBox'),
      ),
      body: new Container(
        color: Colors.green,
        width: 250.0,
        height: 250.0,
        child: new FittedBox(
          fit: BoxFit.contain,
          alignment: Alignment.topLeft,
          child: new Container(
            color: Colors.deepOrange,
            child: Text('缩放布局'),
          ),
        ),

      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    title: '缩放布局ffittedBox',
    home: LayoutDemo(),
  ));
}