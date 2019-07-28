
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final appName = 'hello world';
    return MaterialApp(
      title: appName,
      theme:  new ThemeData(//flutter 默认主题包
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
          
        ),
        body: Center(
          child: Text('hello world1'),
        ),
      ),
    );
  }
}

