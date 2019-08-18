/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 * Dismissible 滑动删除
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '滑动删除',
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
//  构建30条数据
  List<String> items = new List<String>.generate(30, (i) => '列表项目${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('滑动删除'),
      ),
      body: new ListView.builder(
          itemCount: items.length, //指定列表长度
          itemBuilder: (context, index) { //构建列表
            final item = items[index]; //被删除的项
            return new Dismissible(
                key: new Key(item),
                onDismissed: (direction) { //被删除的回调
//                  移除指定索引项
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text('$item 被删除了'))
                  );
                },
                child: new ListTile(title: Text('$item'),)
            );
          }),
    );
  }
}
