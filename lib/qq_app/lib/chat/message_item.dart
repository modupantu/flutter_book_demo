/**
 * 作者： 魔都叛徒 2019/8/25.
 * 邮箱：caoruichun@yeah.net
 * 聊天消息列表项实现
 */
import 'package:flutter/material.dart';
import './message_data.dart';
import 'package:date_format/date_format.dart';
import '../common/touch_callback.dart';

//聊天列表项实现
class MessageItem extends StatelessWidget {
  final MessageData message;

  MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    //最外层容器
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      height: 64.0,
      child: TouchCallBack(
        onPressed: () {

        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //展示头像
            Container(
              //头像左右留一定的外边距
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.network(
                message.avatar,
                width: 48.0,
                height: 48.0,
              ),
            ),
            Expanded(
              child: Column(
                //垂直居中
                mainAxisAlignment: MainAxisAlignment.center,
//      水平左对齐
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message.title,
                    style: TextStyle(fontSize: 16.0, color: Color(0xFF353535)),
                    maxLines: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                  ),
                  Text(
                    message.subTitle,
                    style: TextStyle(fontSize: 16.0, color: Color(0xFFa9a9a9)),
                    maxLines: 1,
//          显示不完用省略号表示
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
//    时间顶部对齐
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0, top: 12.0),
              child: Text(
                //格式化时间
                formatDate(message.time, [HH, ':', nn, ':', 'ss']).toString(),
                style: TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
              ),
            )
          ],
        ),

      ),
    );
  }
}
