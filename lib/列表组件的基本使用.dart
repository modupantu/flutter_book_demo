import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('123'),
        ),
        body: MyImages(),
      ),
    );
  }
}

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      // reverse: true,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.access_time),
          title: Text('title'),
          subtitle: Text("subtitle"),
          trailing: Icon(Icons.add_circle_outline),
        ),
        ListTile(
          title: Text('title'),
          subtitle: Text("subtitle"),
          trailing: Icon(Icons.add_circle_outline),
        ),
      ],
    );
  }
}
