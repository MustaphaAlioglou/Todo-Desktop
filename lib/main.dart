import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:popcorn/counter.dart';
import 'package:popcorn/models/todo.dart';
import 'package:popcorn/widgets/new_Task.dart';
import 'package:popcorn/widgets/todo_list.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> todos = [];

  int _calcTotalCompletions() {
    var totalCompletions = 0;
    todos.forEach((element) {
      if (element.completed) totalCompletions++;
    });
    return totalCompletions;
  }

  void _updateTodoCompletions(int index) {
    setState(() {
      todos[index].completed = !todos[index].completed;
    });
  }

  void showAddTodoModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (bCtx) {
          return NewTask(addTask: _addTask);
        });
  }

  void _addTask(String task) {
    setState(() {
      todos.add(Todo(id: Uuid(), title: task, completed: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Counter(
            totalCompletions: _calcTotalCompletions(),
            numberOfTodos: todos.length,
          ),
          TodoList(
            todos: todos,
            updateTodoCompletions: _updateTodoCompletions,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showAddTodoModal(context);
          },
          child: Icon(Icons.add)),
    );
  }
}
