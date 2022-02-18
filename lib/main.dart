import 'package:flutter/material.dart';
import 'package:popcorn/counter.dart';
import 'package:popcorn/models/todo.dart';
import 'package:popcorn/widgets/todo_cards.dart';

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
  final List<Todo> todos = [
    Todo(id: "id", title: "clean yourRoom", completed: true),
    Todo(id: "id", title: "pet the cat", completed: false),
    Todo(id: "id", title: "join isis", completed: true)

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Counter(totalCompletions: 1,numberOfTodos: todos.length,),
          ...todos.map((todo) => TodoCard(
                title: todo.title,
                completed: todo.completed,
                id: todo.id,
              ))
        ],
      )),
    );
  }
}
