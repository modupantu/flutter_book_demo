/**
 * 作者： 魔都叛徒 2019/7/30.
 * 邮箱：caoruichun@yeah.net
 *文本框组件 TextField
 */

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    controller.addListener((){
      print('输入的内容为 ${controller.text}');
    });
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: Padding(padding: EdgeInsets.all(20.0),
            child:TextField(
              controller: controller,//绑定控制器
              maxLength: 20,//对多字数
              maxLines: 1,//最大行数
              autocorrect: true,//是否自动更正
              autofocus: true,//获取焦点
              obscureText: false,//是不是密码
              textAlign: TextAlign.center,//文本对齐方式
              style: TextStyle(fontSize: 26.0,color: Colors.green),
              onChanged: (text){
                print('文本内容改变回调 $text');
              },
              onSubmitted: (text){
                print('内容提交时回调 $text');
              },
              enabled: true,//是否禁用
              decoration: InputDecoration(
                fillColor: Colors.green.shade200,
                filled: true,
                helperText: 'User',
                prefixIcon: Icon(Icons.person),
                suffixText: 'user'
              ),
            ) ,),
        ),
      ),
    );
  }
}
