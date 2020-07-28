import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('网格列表'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
            childAspectRatio: 1.0,
          ),
          children: <Widget>[
            new Image.network(
              'https://t8.baidu.com/it/u=2247852322,986532796&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1596529150&t=ee13bc717e8f4fbfad470600811c4c55',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://t8.baidu.com/it/u=2247852322,986532796&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1596529150&t=ee13bc717e8f4fbfad470600811c4c55',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'https://t8.baidu.com/it/u=2247852322,986532796&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1596529150&t=ee13bc717e8f4fbfad470600811c4c55',
              fit: BoxFit.cover,
            ),
            new Image.network(
                'https://t8.baidu.com/it/u=2247852322,986532796&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1596529150&t=ee13bc717e8f4fbfad470600811c4c55',
                fit: BoxFit.cover),
            new Image.network(
              'https://t8.baidu.com/it/u=2247852322,986532796&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1596529150&t=ee13bc717e8f4fbfad470600811c4c55',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
