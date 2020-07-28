import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp(items: new List<String>.generate(1000, (i) => "Item $i")));

class MyApp extends StatelessWidget {
  // 构造函数
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViewDemo',
      home: new Scaffold(
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
