import 'package:flutter/material.dart';
import 'pages3-22/DefaultPage.dart';
import 'pages3-22/HomePage.dart';
import 'pages3-22/ListPage.dart';
import 'pages3-22/MePage.dart';
import 'pages3-22/SearchPage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
      routes: {
        "/HomePage": (context) => HomePage(),
        "/DefaultPage": (context) => DefaultPage(),
        "/ListPage": (context) => ListPage(),
        "/MePage": (context) => MePage(),
        "/Search": (context) => SearchPage(),
      },
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _list = [
    HomePage(),
    ListPage(),
    DefaultPage(),
    MePage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.red,
        iconSize: 36,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          print(index);
        },
        // BottomNavigationBarType:,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("列表"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_device_information),
            title: Text("详情"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            title: Text("我的"),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("有状态组件"),
      ),
      body: _list[_currentIndex],
    );
  }
}
