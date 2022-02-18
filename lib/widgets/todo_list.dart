import 'package:flutter/cupertino.dart';
import 'package:popcorn/models/todo.dart';
import 'package:popcorn/widgets/todo_cards.dart';

class TodoList extends StatelessWidget{
  final List<Todo> todos;
  TodoList({
    required this.todos
});
  @override
  Widget build (BuildContext context){
    return Container(
      height: 500,
    child: ListView.builder(itemBuilder: (ctx,i){
      return TodoCard(title: todos[i].title, completed: todos[i].completed,id: todos[i].id);
    }),

    );
  }
}