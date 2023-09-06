import 'package:day6/details.dart';
import 'package:flutter/material.dart';

class big extends StatelessWidget {
  big({super.key, required this.salem});

  final bulding salem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.network(salem.imageURL),
          Text(
            salem.name,
            style: TextStyle(fontSize: 40),
          ),
        ],
      )),
    );
  }
}
