import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        body: Center(
            child: Text(
          'Hello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,WidgetHello,Widget',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid),
        )),
      ),
    );
  }
}
