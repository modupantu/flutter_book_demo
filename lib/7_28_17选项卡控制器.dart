/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 选项卡控制器 DefaultTabController
 */

import 'package:flutter/material.dart';

void main(){
  runApp(DefaultTabControllerSample());
}
class DefaultTabControllerSample extends StatelessWidget{
//  选项卡数据
  final List<Tab> MyTabs = <Tab>[
    Tab(text: '选项卡1'),
    Tab(text: '选项卡2'),
    Tab(text: '选项卡3'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: MyTabs.length,
          child: Scaffold(
            appBar: AppBar(
//              add 导航栏
              bottom: TabBar(tabs: MyTabs),
            ),
            body: TabBarView(
               children: MyTabs.map((Tab tab){
                 return Center(child: Text(tab.text));
               }).toList(),
            ),
          )
      ),
    );
  }
}