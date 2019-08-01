/**
 * 作者： 魔都叛徒 2019/8/2.
 * 邮箱：caoruichun@yeah.net
 * 水平布局row
 */

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: '水平布局',
      home: LayouDemo(),
    ));

class LayouDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水平布局'),
      ),
      body: Row(
        children: <Widget>[
          new Expanded(
              child: Text(
            '左侧文本',
            textAlign: TextAlign.center,
          )),
          new Expanded(
              child: Text(
            '左侧文本',
            textAlign: TextAlign.center,
          )),
          new Expanded(
              child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          )),
        ],
      ),
    );
  }
}
