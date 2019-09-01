/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 搜索页面
 */

import 'package:flutter/material.dart';
import './common/touch_callback.dart';

//搜索
class Search extends StatefulWidget{
  @override
  SearchState createState()=> new SearchState();
}
class SearchState extends State<Search>{
  FocusNode focusNode = new FocusNode();//定义焦点节点
  //请求获取焦点
_requestFocus(){
  FocusScope.of(context).requestFocus(focusNode);
  return focusNode;
}
//返回一个文本组件
_getText(String text){
  return TouchCallBack(
    isfeed: false,
    onPressed: (){},
    child: Text(
      text,
      style: TextStyle(fontSize: 14.0,color: Color(0xff1aad19)),
    ),
  );
}
//搜索页面渲染
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 25.0),
        child: Column(
//          水平方向居中
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                TouchCallBack(
                  isfeed: false,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    margin: const EdgeInsets.only(left: 12.0,right: 10.0),
                    //返回按钮
                    child: Icon(Icons.chevron_left,
                    color: Colors.black,),
                  ),
                ),
                //搜索框容器
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0,right: 10.0),
                  //搜索框底部边框
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0,color: Colors.green)
                    ),

                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        //输入框
                        child: TextField(
                          //请求获取焦点
                          focusNode: _requestFocus(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0
                          ),
                          onChanged: (String text){},
                          decoration: InputDecoration(
                            hintText: '搜搜',border: InputBorder.none
                          ),
                        ),


                      ),
                      //                        添加麦克风图标
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Text(
                '常用搜索',
                style: TextStyle(fontSize: 16.0,color: Color(0xffb5b5b5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                //对齐方式采用均匀对齐
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //第一行搜索项
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  //第二行搜索项
                  _getText('Flutter'),
                  _getText('Dart'),
                  _getText('C++'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}