import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/todo.dart';

final data = <TodoModel>[
  TodoModel(id: 'id-0', title: 'Todo 0'),
  TodoModel(id: 'id-1', title: 'Todo 1'),
  TodoModel(id: 'id-2', title: 'Todo 2'),
];

class TodoItem extends StatelessWidget {
  const TodoItem({this.value, this.isChecked = false, key}) : super(key: key);
  final String value;
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    /// @TODO: Implement your todo item here.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: isChecked, onChanged: null),
            Text(value),
          ],
        ),
        IconButton(icon: Icon(Icons.close), onPressed: () {})
      ],
    );
  }
}

class TodoAppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // @TODO: Implement the layout
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Center(
        child: ListView(
            children: data
                .map((item) => TodoItem(value: item.title, isChecked: false))
                .toList()),
      ),
    );
  }
}
