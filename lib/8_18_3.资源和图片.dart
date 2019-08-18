/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 *
 */
// 加载文本配置文件 通过 rootBundle 加载config.json 配置文件
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
//加载配置文件是异步处理，因为文件的读写操作需要时间，并且不可预知

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}
