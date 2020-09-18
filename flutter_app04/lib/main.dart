import 'package:flutter/material.dart';

class Product {
  final String title;
  final String desc;
  Product(this.title, this.desc);
}

void main() {
  runApp(MaterialApp(
    title: '导航数据传递和接收',
    home: new ProductList(
      products: List.generate(
        20,
        (i) => Product('这是商品$i', '这是商品详情，编号为$i'),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '导航数据传递和接收',
      home: new ProductList(
        products: List.generate(
          20,
          (i) => Product('这是商品$i', '这是商品详情，编号为$i'),
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('商品列表'),
      ),
      body: new ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: new Image.asset('images/mapImg.png'),
            title: new Text(products[index].title),
            subtitle: new Text(products[index].desc),
            onTap: () {
              _navigateTo(context, index);
            },
          );
        },
      ),
    );
  }

  _navigateTo(BuildContext context, int index) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => new ProductDetail(
                  product: products[index],
                )));
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(result)));
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(product.title),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text(product.desc),
            new RaisedButton(
              child: new Text('返回'),
              onPressed: () {
                Navigator.pop(context, product.desc);
              },
            )
          ],
        ),
      ),
    );
  }
}
