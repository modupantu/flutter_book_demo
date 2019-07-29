/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * TabBar 水平选项卡以视图组件
 */
import 'package:flutter/material.dart';

class TabBarSample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(length: items.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text('选项卡示例'),
              bottom: TabBar(
                  isScrollable: true,//可滚动
                  tabs:items.map((ItemView item){//迭代添加选项卡子项
                   return Tab(
                     text:item.title,
                     icon:new Icon(item.icon),
                   );
                  }).toList(),
              ),
            ),
//            添加选项卡视图
            body: TabBarView(
              children: items.map((ItemView item){//迭代显示选项卡视图
                return Padding(
                  padding: EdgeInsets.all(16.0),
                  child: new SelectedView(item:item),
                );
              }).toList(),
            ),
          )),
    );
  }
}


//视图项数据
class ItemView{
  const ItemView({this.title,this.icon});//构造方法
  final String title;
  final IconData icon;
}

//选项卡的类目

const List<ItemView> items = const <ItemView>[
  const ItemView(title:'自驾',icon:Icons.directions_car),
  const ItemView(title:'自行车',icon:Icons.directions_bike),
  const ItemView(title:'轮船',icon:Icons.directions_boat),
  const ItemView(title:'公交车',icon:Icons.directions_bus),
  const ItemView(title:'火车',icon:Icons.directions_railway),
  const ItemView(title:'步行',icon:Icons.directions_walk),
  const ItemView(title:'步行',icon:Icons.directions_walk),
  const ItemView(title:'步行',icon:Icons.directions_walk),
];

//被选中的视图
class SelectedView extends StatelessWidget{
  const SelectedView({Key key,this.item}):super(key:key);
//  视图数据
  final ItemView item;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,//垂直方向最小化处理
          crossAxisAlignment: CrossAxisAlignment.center,//水平方向居中对齐
          children: <Widget>[
            new Icon(item.icon,size: 128.0,color: textStyle.color,),
            new Text(item.title,style: textStyle,)
          ],
        ),
      ),
    );
  }
}

void main(){
  runApp(TabBarSample());
}