/**
 * 作者： 魔都叛徒 2019/7/27.
 * 邮箱：caoruichun@yeah.net
 * http 请求
 */

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'http请求',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('http示例'),
        ),
        body: new Center(
          child: new RaisedButton(
              onPressed: (){
                var url = 'http://httpbin.org/';
                http.get(url).then((response){
                  print('状态：${response.statusCode}');
                  print("正文：${response.body}");
                });
              },
            child: new Text('发起httpq请求'),
          ),
        ),
      )

    );
  }
}


















