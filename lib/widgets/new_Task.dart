import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
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
            ),
            TextButton(onPressed: () {
              print(_todoController.text);
            }, child: Text("Add"))
          ],
        ));
  }
}
