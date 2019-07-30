/**
 * 作者： 魔都叛徒 2019/7/30.
 * 邮箱：caoruichun@yeah.net
 * 卡片组件Card
 */

import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title: '',
  home: MyApp(),
));
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var card = new SizedBox(
      height: 250.0,
      child: Card(
        child: Column(
          children: <Widget>[
            new ListTile(
              title: Text(
                'aaaaaaaaaaa',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text('xxxxxx'),
              leading: Icon(Icons.home,color: Colors.lightBlue,),
            ),
            new Divider(),
            new ListTile(
              title: Text(
                'bbbbbbbbbbb',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text('sssssss'),
              leading: Icon(Icons.school,color: Colors.lightBlue,),
            ),
            new Divider(),
            
          ],
        ),
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: new Center(
        child: card,
      ),
    );
  }
}