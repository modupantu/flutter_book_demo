/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 网格列表布局 GridView
 */

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = '网格列表示例';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
//         GridView.count 构建网格
        body: GridView.count(
            primary: false,
//            四周增加一定的间隙
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 30.0,
//            一行3列
          crossAxisCount: 3,
          children: <Widget>[
            const Text('第1行-第1列2222222222'),
            const Text('第1行-第1列aaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
            const Text('第1行-第1列111111111111'),
            const Text('2-1'),
            const Text('2-2'),
            const Text('2-3'),
            const Text('3-1'),
            const Text('3-2'),
            const Text('3-3'),
          ],
        ),
      ),
    );
  }
}