import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
        child: Card(
            child: Container(
      padding: EdgeInsets.all(20),
      height: 125,
      width: 500,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("hello",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          Icon(Icons.check, color: Colors.green)
        ],
      )),
    )));
  }
}
