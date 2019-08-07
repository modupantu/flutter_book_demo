/**
 * 作者： 魔都叛徒 2019/8/8.
 * 邮箱：caoruichun@yeah.net
  table
 */

import "package:flutter/material.dart";
void main(){
  runApp(MaterialApp(
    title: '',
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0:FixedColumnWidth(100.0),
            1:FixedColumnWidth(40.0),
            2:FixedColumnWidth(80.0),
            3:FixedColumnWidth(80.0),
        },
//          设置边框样式
        border: TableBorder.all(color: Colors.blue,width: 2.0,style:BorderStyle.solid),
          children: const<TableRow>[
//            第一行
          TableRow(
            children: <Widget>[
              Text('姓名'),
              Text('性别'),
              Text('年龄'),
              Text('身高'),
            ]
          ),
//            第二行
            TableRow(
                children: <Widget>[
                  Text('333'),
                  Text('222'),
                  Text('111'),
                  Text('身222高'),
                ]
            ),
            TableRow(
                children: <Widget>[
                  Text('333'),
                  Text('222'),
                  Text('111'),
                  Text('身222高'),
                ]
            ),

          ],
        ),
      ),
    );
  }
}