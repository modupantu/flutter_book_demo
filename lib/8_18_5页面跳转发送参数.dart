/**
 * 作者： 魔都叛徒 2019/8/18.
 * 邮箱：caoruichun@yeah.net
 * 页面跳转发送参数
 */
import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;

  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: '跳转发送参数',
    home: new ProductList(
      products: new List.generate(
          20, (i) => new Product('商品 $i', '这是一个商品详情 $i')),
    ),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: new ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text(products[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(product: products[index])
                  ),
                );
              },
            );
          }),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('${product.title}'),
      ),
      body: new Padding(padding: new EdgeInsets.all(16.0),
      child: Text('${product.description}'),),
    );
  }
}