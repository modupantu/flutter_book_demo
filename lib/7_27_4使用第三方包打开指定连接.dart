/**
 * 作者： 魔都叛徒 2019/7/27.
 * 邮箱：caoruichun@yeah.net
 * 使用第三方包
 */

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '使用第三方包',
      home: new Scaffold(
          appBar: AppBar(
            title: new Text('使用第三方包实例'),
          ),
        body: new Center(
          child: new RaisedButton(
              onPressed: (){
//               指定URL并发起请求
                const url = 'https://www.baidu.com';
                launch(url);
              },
            child: new Text('打开百度'),
          ),
        ),
      ),
    );
  }
}