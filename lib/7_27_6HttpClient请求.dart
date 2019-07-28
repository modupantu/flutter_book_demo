/**
 * 作者： 魔都叛徒 2019/7/27.
 * 邮箱：caoruichun@yeah.net
 * HttpClient请求
 */
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

//  获取天气数据
 void getWeatherData() async {
   try{
//     实例化一个HttpClient对象
    HttpClient httpClient = new HttpClient();
    /*
    * Uri.parse("http://t.weather.sojson.com/api/weather/city/101030100")
    *
    * */
    Uri uri = Uri(scheme: 'http',host: "t.weather.sojson.com",
        queryParameters: {"_id":26,"city_code":"1010301000","city_name":"天津"});

//    发起请求
   HttpClientRequest request = await httpClient.getUrl(uri);
//   等待服务器返回数据
   HttpClientResponse response = await request.close();
//   使用utf8.decoder 从response 里解析数据
   var result = await response.transform(utf8.decoder).join();
//   输出响应头
   print(result);
   httpClient.close();
   }catch(e){
     print('请求失败：$e');
   }finally{

   }
 }

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'httpclient请求',
      home: Scaffold(
        appBar: AppBar(
          title: Text('httpclient请求1'),
        ),
        body: Center(
          child: RaisedButton(
              child:Text('获取天气数据'),
              onPressed: getWeatherData
          ),
        ),
      ),
    );
  }
}