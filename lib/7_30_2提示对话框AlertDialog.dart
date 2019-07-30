/**
 * 作者： 魔都叛徒 2019/7/30.
 * 邮箱：caoruichun@yeah.net
 *提示对话框AlertDialog
 */
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: AlertDialog(
            title: Text('提示'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('是否要删除?'),
                  Text('一旦删除数据不可恢复！')
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('ok'),
                onPressed: (){
                  print('ok');
                },
              ),
              FlatButton(
                child: Text('clear'),
                onPressed: (){
                  print('clear');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}
