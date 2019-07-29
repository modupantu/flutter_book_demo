/**
 * 作者： 魔都叛徒 2019/7/29.
 * 邮箱：caoruichun@yeah.net
 * 抽屉组件 Drawer
 */
import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    title: '抽屉组件',
    home: LayoutDemo(),
  )
);
class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('抽屉组件 Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
//            设置用户信息，头像，用户名，Email等
          UserAccountsDrawerHeader(
            accountName: Text('魔都叛徒'),
            accountEmail: Text('caoruichun@yeah,net'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new AssetImage("images/qq.jpg"),
            ),
            onDetailsPressed: (){},
            otherAccountsPictures: <Widget>[
              new Container(
                child: Image.network('https://gss0.bdstatic.com/5bVWsj_p_tVS5dKfpU_Y_D3/res/r/image/2017-09-27/297f5edb1e984613083a2d3cc0c5bb36.png'),
              )
            ],
          ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.color_lens),),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.phone),),
              title: Text('我的相册'),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.wifi),),
              title: Text('免流服务特权'),
            ),
          ],
        ),
      ),
    );
  }
}