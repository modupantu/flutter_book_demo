/**
 * 作者： 魔都叛徒 2019/7/31.
 * 邮箱：caoruichun@yeah.net
 * CupertinoAlertDialog 对话框
 */

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CupertinoAlertDialog 对话框',
      home: Scaffold(
        appBar: AppBar(
          title:Text('CupertinoAlertDialog 对话框')
        ),
        body: Center(
          child: CupertinoAlertDialog(
            title: Text('提示'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('是否要删除？'),
                  Text('一旦删除不可恢复！'),
                ],
              ),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text('ok'),
                onPressed: (){},
              ),
              CupertinoDialogAction(
                child: Text('err'),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}