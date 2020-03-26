import "package:flutter/material.dart";

class AppBarDemo extends StatelessWidget {
  AppBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('111');
            }),
        backgroundColor: Colors.red,
        title: Text('title'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('222');
              }),
        ],
      ),
    );
  }
}
