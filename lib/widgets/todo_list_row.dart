import 'package:app_001_todo_learn_bloc/model/todo.dart';
import 'package:flutter/material.dart';

class ToDoListRow extends StatelessWidget {
  const ToDoListRow({
    super.key,
    required this.toDo,
    required this.onListTap
  });

  final ToDo toDo;
  final Function(ToDo) onListTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.alarm),
      onTap: () => onListTap(toDo),
      title: Text(toDo.note ?? ''),
    );
  }
}