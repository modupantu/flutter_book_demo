/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 *  长列表组件 itemBuilder
 */
import 'package:flutter/material.dart';

void main()=>runApp(
    new MyApp(
//      使用generate方法产生500条数据
      items:new List<String>.generate(500, (i)=>"Item $i"),
    )
);

class MyApp extends StatelessWidget{
//
  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    final title = "长列表示例";

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
//        使用ListView.builder
      body: new ListView.builder(
//        列表长度
          itemCount: items.length,
//          列表项构造器
          itemBuilder: (context,index){
            return new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('${items[index]}'),
            );
          }
      ),
      ),
    );
  }
}