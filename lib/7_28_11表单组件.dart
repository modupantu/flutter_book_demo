/**
 * 作者： 魔都叛徒 2019/7/28.
 * 邮箱：caoruichun@yeah.net
 * 表单组件
 *
 * 简单的的登陆
 * 密码6位数
 */


import 'package:flutter/material.dart';

void main()=>runApp(new LoginPage());

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=>new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
//  全局key 用来获取form表单数据
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
//用户名
  String userName;
// 密码
  String password;
  void login(){
//   读取当前form状态
   var loginForm = loginKey.currentState;
// 验证表单
   if(loginForm.validate()){
      loginForm.save();
      print('username:'+userName+'password:'+password);
   }
 }
 @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Form表单示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form表单示例'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: loginKey,
                child: new Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: new InputDecoration(
                        labelText: '请输入用户名'
                      ),
                      onSaved: (value){
                        userName = value;
                      },
                      onFieldSubmitted: (value){

                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '请输入密码',
                      ),
                      obscureText: true,
                      validator: (value){
                        return value.length<6? '密码长度不够6位数':null;
                      },
                      onSaved: (value){
                        password = value;
                      },
                    )
                  ],
                ),
              ),
            ),
            new SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(onPressed: login,
              child: Text('登陆',style: TextStyle(fontSize: 18.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
