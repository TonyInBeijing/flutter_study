import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text(
              'hah',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: new Text('xixo'),
            leading: new Icon(
              Icons.accessibility,
              color: Colors.lightBlue,
            ),
          ),
          new ListTile(
            title: new Text(
              'hah',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: new Text('xixo'),
            leading: new Icon(
              Icons.accessibility,
              color: Colors.lightBlue,
            ),
          ),
          new ListTile(
            title: new Text(
              'hah',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: new Text('xixo'),
            leading: new Icon(
              Icons.accessibility,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
    return new MaterialApp(
      title: 'Row Widget Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('垂直方向布局'),
        ),
        body: new Center(
          child: card,
        ),
      ),
    );
  }
}
