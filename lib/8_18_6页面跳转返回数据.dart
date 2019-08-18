/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 *  页面跳转返回数据
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: new FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面跳转返回数据'),
      ),
      body: new Center(
        child: new PouteButton(),
      ),
    );
  }
}

class PouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToSecondPage(context);
      },
      child: new Text('跳转到第二个页面'),
    );
  }

  _navigateToSecondPage(BuildContext context) async {
    final result = await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SecondPage()),
    );
    Scaffold.of(context)
        .showSnackBar(new SnackBar(content: new Text('$result')));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择一条数据'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'hi google');
                },
                child: Text('hi google'),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'hi flutter');
                },
                child: Text('hi flutter'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
