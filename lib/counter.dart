import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(40),
        child: Text(
          "0/7",
          style: TextStyle(fontSize: 50),
        ));
  }
}
