import 'package:flutter/cupertino.dart';
import 'package:popcorn/models/todo.dart';
import 'package:popcorn/widgets/todo_cards.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final Function(int) updateTodoCompletions;

  TodoList({required this.todos, required this.updateTodoCompletions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, i) {
          return TodoCard(
              title: todos[i].title,
              completed: todos[i].completed,
              id: todos[i].id,
              updateTodoCompletions: updateTodoCompletions,
              index: i);
        },
        itemCount: todos.length,
      ),
    );
  }
}
