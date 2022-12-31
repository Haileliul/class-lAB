import 'package:flutter/material.dart';

class horizon extends StatelessWidget {
  const horizon({super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      width: 100,
      color: Colors.red,
      child: Column(
        children: [
          Text("$title"),
          SizedBox(
            height: 10,
          ),
          Image(image: AssetImage('$image')),
        ],
      ),
    );
  }
}
