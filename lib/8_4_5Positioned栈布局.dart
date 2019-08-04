/**
 * 作者： 魔都叛徒 2019/8/4.
 * 邮箱：caoruichun@yeah.net
 *  TODO Positioned栈布局
 */
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  title: '层叠定位布局',
  home: new MyApp(),
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠定位示例'),
      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            new Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564940377393&di=7c720b8a4fdbfe7d03e85a15657aec20&imgtype=0&src=http%3A%2F%2Fp0.ifengimg.com%2Fpmop%2F2017%2F0215%2F56326F7E57AAA151F666CB2D689FE258ADFCD689_size17_w730_h422.jpeg'),
            new Positioned(
                bottom: 50.0,
                right: 50.0,
                child: Text('ssssss',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36.0,
                    fontFamily: 'serif',
                    color: Colors.red),)
            )
          ],
        ),
      ),
    );
  }
}