/**
 * 作者： 魔都叛徒 2019/8/12.
 * 邮箱：caoruichun@yeah.net
 * transform矩阵转换
 */
import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Row(
//        水平等间距排列子组件
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
//          设置基准线
          new Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'Aabcd',
              style: TextStyle(
                  fontSize: 18.0, textBaseline: TextBaseline.alphabetic),
            ),
          ),
          new Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 40.0,
              height: 40.0,
              color: Colors.green,
            ),
          ),
          new Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'DeFad',
              style: new TextStyle(
                fontSize: 26.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: '132',
    home: LayoutDemo(),
  ));
}
