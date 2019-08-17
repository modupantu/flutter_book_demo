/**
 * 作者： 魔都叛徒 2019/8/17.
 * 邮箱：caoruichun@yeah.net
    布局案例01
 */
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    风景区地址选择
    Widget addressContainer = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //顶部对齐
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0), //与下边文本间隔一定举例
                  child: Text(
                    '风景区地址',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '湖北十堰市丹江口市',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('66'),
        ],
      ),
    );
//    构建按钮组中单个按钮，参数为图标以及文本
    Column buildButtonColumn(IconData icon,String label){
      return Column(
        mainAxisSize: MainAxisSize.min,//垂直方强大小最小化
        mainAxisAlignment: MainAxisAlignment.center,//垂直方向居中对齐
        children: <Widget>[
          Icon(icon,color: Colors.lightGreen[600]),//上面图标部分
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600],
              ),
            ),
          ),
        ],
      );
    }
//    按钮组部分
    Widget buttonsComtainer = Container(
//      容器横向布局
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//水平方向均匀排列每个元素
      children: <Widget>[
        buildButtonColumn(Icons.call, '电话'),
        buildButtonColumn(Icons.near_me, '导航'),
        buildButtonColumn(Icons.share, '分享'),
      ],
    ),
    );
//    风景区介绍文本部分
    Widget textContainer = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
        武当三位于风景区介绍文本部分构建按钮组中单个按钮，参数为图标以及文本
          武当三位于风景区介绍文本部分构建按钮组中单个按钮，参数为图标以及文本
        武当三位于风景区介绍文本部分构建按钮组中单个按钮，参数为图标以及文本
          武当三位于风景区介绍文本部分构建按钮组中单个按钮，参数为图标以及文本
        武当三位于风景区介绍文本部分构建按钮组中单个按钮，参数为图标以及文本
          武当三位于风景区介绍文本部分构建按钮组中单个按钮，参数为图标以及文本
          武当三位于风景区介绍文本部分构建按钮组中单个按钮，参数为图标以及文本
        ''',
        softWrap: true,
      ),
    );
    return new MaterialApp(
      title: '布局综合案例',
      theme: new ThemeData(
        brightness: Brightness.light, //应用程序整体主题的亮度
        primaryColor: Colors.lightGreen[600], //App主要部分的背景色
        accentColor: Colors.orange[600], //前景色（文本，按钮等）
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '武当山风景区',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/timg.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover, //图片填充整个父容器
            ),
            addressContainer,
            buttonsComtainer,
            textContainer
          ],
        ),
      ),
    );
  }
}
