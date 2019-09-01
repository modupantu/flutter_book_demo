/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 触摸响应组件
 */

import "package:flutter/material.dart";

//触摸回调组件
class TouchCallBack extends StatefulWidget{
  //子组件
  final Widget child;
  //回调函数
  final VoidCallback onPressed;
  final bool isfeed;
  //背景色
  final Color background;
  //传入参数
  TouchCallBack({Key key,
    @required this.child,
    @required this.onPressed,
    this.isfeed:true,
    this.background:const Color(0xffd8d8d8),
  }):super(key:key);
  @override
  TouchState createState()=> TouchState();
}

class TouchState extends State<TouchCallBack>{
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    //返回GestureDetector 对象
    return GestureDetector(
      child: Container(
        color: color,
        child: widget.child,
      ),
//      回调
    onTap: widget.onPressed,
      onPanDown: (d){
        if(widget.isfeed==false)return;
        setState(() {
          color=widget.background;
        });
      },
      onPanCancel: (){
        setState(() {
          color=Colors.transparent;
        });
      },
    );
  }
}