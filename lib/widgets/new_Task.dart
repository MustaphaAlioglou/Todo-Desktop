import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  final Function(String) addTask;

  NewTask({required this.addTask});

  @override
  State<StatefulWidget> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                onSubmitted: (value) {
                  widget.addTask(_todoController.text);
                  Navigator.of(context).pop();
                },
                controller: _todoController,
                decoration: const InputDecoration(labelText: "New Task"),
                maxLength: 20,
                style: const TextStyle(fontSize: 30)),
            TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(35),
                ),
                onPressed: () {
                  widget.addTask(_todoController.text);
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Add",
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ));
  }
}
