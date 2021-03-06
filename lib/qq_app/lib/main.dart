import 'package:flutter/material.dart';
import './app.dart';
import './loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './search.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '聊天室',
  //自定义主题
  theme: mDefaultTheme,
  routes: <String, WidgetBuilder>{
    "app":(BuildContext context)=>new App(),
    "/friends":(_)=>new WebviewScaffold(
//        webview插件
        url: "https://flutter.io/",
        appBar: new AppBar(
          title: new Text('Flutter官网'),
        ),
      withZoom: true,
      withLocalStorage: true,
    ),
    'search':(BuildContext context)=>new Search(),//搜索页面路由

  },
  home: new LoadingPage(),
));
//自定义主题
final ThemeData mDefaultTheme=new ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0XFFebebeb),
  cardColor: Colors.green,
);