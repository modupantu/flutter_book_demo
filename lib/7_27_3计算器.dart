/**
 * 作者： 魔都叛徒 2019/7/27.
 * 邮箱：caoruichun@yeah.net
 * 有状态组件和无状态组件
 *  无状态组件：是不可变的意味着他们的属性不能改变，所有值都是最终的
 *  有状态组件：持有的状态可能是widget生命周期中发生变化，实现一个statefulWidget至少需要两个类
 *            一个StatefulWidget类
 *            一个State类：StatefulWidget类本身是不变的，但是State类在Widget生命周期中始终存在
 */
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
//MyApp 不需要做状态处理，所以此组件继承StatelessWidget
class MyApp extends StatelessWidget{
//  这个组件是整个应用的主组件
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        //      自定义主题
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title:'Flutter Demo Home Page'),
    );
  }
}
//主页需要继承 StatefulWidget
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key,this.title}):super(key:key);
  //  标题
  final String title;
//  必须重写createState
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

//状态类必须继承State类，注意后面需要指定为<MyHomePage>
class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;//计数器
  void _incrementCounter(){
//    调用State类里面的setState方法来更改状态值,使得计数器加一
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
//      居中布局
      body: new Center(
//        垂直布局
        child:new Column(
//        主轴居中对齐
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('点击触发'),
            new Text('$_counter',//绑定计数器的值
            style:Theme.of(context).textTheme.display1,
            ),
          ],
        )
      ),
      floatingActionButton: new FloatingActionButton(onPressed: _incrementCounter,
      tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}