import 'package:flutter/material.dart';
import './data/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("有状态组件"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200.0,
        ),
        Text("nihao${this.countNum}"),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              this.countNum++;
            });
            print(this.countNum);
          },
          child: Text("buttom"),
        ),
      ],
    );
  }
}
// class HomePage extends StatelessWidget {
//   int countNum = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(
//           height: 200.0,
//         ),
//         Text("nihao${this.countNum}"),
//         SizedBox(
//           height: 20.0,
//         ),
//         RaisedButton(
//           onPressed: () {
//             this.countNum++;
//             print(this.countNum);
//           },
//           child: Text("button"),
//         ),
//       ],
//     );
//   }
// }
