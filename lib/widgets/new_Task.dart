import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  final Function(String) addTask;

  NewTask({required this.addTask});

  @override
  State<StatefulWidget> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  var _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _todoController,
              decoration: InputDecoration(labelText: "New to-do"),
              maxLength: 20,
            ),
            TextButton(
                onPressed: () {
                  widget.addTask(_todoController.text);
                },
                child: Text("Add"))
          ],
        ));
  }
}
