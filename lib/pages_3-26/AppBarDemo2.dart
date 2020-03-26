import "package:flutter/material.dart";

class AppBarDemo extends StatelessWidget {
  AppBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: <Widget>[
            Tab(
              text: "热门",
            ),
            Tab(
              text: "热门",
            ),
          ]),
        ),
        body: TabBarView(children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('xx'),
              ),
              ListTile(
                title: Text('xx'),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('qq'),
              ),
              ListTile(
                title: Text('qq'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
