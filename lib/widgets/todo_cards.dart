import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final bool completed;
  final Uuid id;
  final Function(int) updateTodoCompletions;
  final int index;

  TodoCard(
      {required this.title,
      required this.completed,
      required this.id,
      required this.updateTodoCompletions,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        updateTodoCompletions(index);
      },
        child: FractionallySizedBox(
            widthFactor: 0.9,
            child: Card(
                child: Container(
              padding: EdgeInsets.all(20),
              height: 75,
              width: 500,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(title,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
                  Icon(completed ? Icons.check : Icons.close,
                      color: completed ? Colors.green : Colors.red)
                ],
              )),
            ))));
  }
}
