/**
 * 作者： 魔都叛徒 2019/7/29.
 * 邮箱：caoruichun@yeah.net
 *扁平化按钮 flotButton
 */
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    int i=0;
    return MaterialApp(
      title: '扁平化按钮',
      home: Scaffold(
        appBar: AppBar(
          title: Text('扁平化按钮'),
        ),
        body: Center(
          child: FlatButton(onPressed: (){
            print('dianji ${i++}');
          }, child: Text('flotButton',style: TextStyle(fontSize: 24.0),)),
        ),
      ),
    );
  }
}





