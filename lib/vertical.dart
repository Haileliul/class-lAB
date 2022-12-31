import 'package:flutter/material.dart';

class verti extends StatelessWidget {
  const verti({super.key, required this.title, required this.price});

  final String title;

  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 100,
      width: 100,
      color: Colors.red,
      child: Column(children: [
        Column(
          children: [
            Text("$title"),
            Text("$price"),
          ],
        )
      ]),
    );
  }
}

List cate = [
  {
    "title": "Electronics",
    "image": "url",
    "products": [
      {"title": "Lg tv", "price": 200},
      {"title": "Lg tv", "price": 200},
      {"title": "Lg tv", "price": 200},
      {"title": "LAptop", "price": 2000},
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
