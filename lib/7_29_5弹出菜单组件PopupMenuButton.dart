/**
 * 作者： 魔都叛徒 2019/7/29.
 * 邮箱：caoruichun@yeah.net
 * 弹出菜单组件PopupMenuButton
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//会控制带单项目
enum ConferenceItem { AddMember, LockConference, ModifyLayout, TurnoffAll }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: FlatButton(
              onPressed: () {},
              child: PopupMenuButton<ConferenceItem>(
                onSelected: (ConferenceItem result) {
                  print(result);
                },
                itemBuilder: (BuildContext context) => //菜单构造器
                    <PopupMenuEntry<ConferenceItem>>[
                      const PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.AddMember,
                        child: Text('添加成员'),
                      ),
                      const PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.LockConference,
                        child: Text('锁定会议'),
                      ),
                      const PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.ModifyLayout,
                        child: Text('修改布局'),
                      ),
                      const PopupMenuItem<ConferenceItem>(
                        value: ConferenceItem.TurnoffAll,
                        child: Text('挂断所有'),
                      ),
                    ],
              )),
        ),
      ),
    );
  }
}
