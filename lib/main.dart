import 'package:flutter/material.dart';
import './horizon.dart';
import './vertical.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  myapp({super.key});

  List cate = [
    {
      "title": "Electronics",
      "image": "url",
      "products": [
        {"title": "Lg tv", "price": 200},
        {"title": "Lotion", "price": 200},
      ]
    },
    {
      "title": "COsmetics",
      "image": "url",
      "products": [
        {"title": "Lotion", "price": 200},
        {"title": "SHIto", "price": 2000},
      ]
    },
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("catigory"),
        ),
        body: Container(
          child: Column(children: [
            Container(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) => horizon(
                  title: cate[index]['title'],
                  image: cate[index]['image'].toString(),
                ),
                itemCount: cate.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Text("The Sub-items"),
            Center(
              child: Container(
                height: 360,
                width: 500,
                child: ListView.builder(
                  itemBuilder: (context, index) => verti(
                    // price: cate[index]['products'][index],
                    price: cate[index]['products'][index]['price'].toString(),
                    title: cate[index]['products'][index]['title'],
                  ),
                  itemCount: cate[index]['products'].length,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
