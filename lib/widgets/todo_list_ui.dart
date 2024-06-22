import 'package:app_001_todo_learn_bloc/model/todo.dart';
import 'package:app_001_todo_learn_bloc/widgets/todo_list_row.dart';
import 'package:flutter/material.dart';

class ToDoListUI extends StatelessWidget {
  const ToDoListUI({
    super.key,
    required this.toDos,
    required this.onListTap
  });

  final List<ToDo> toDos;
  final Function(ToDo) onListTap;

  @override
  Widget build(BuildContext context) {
    if(toDos.isEmpty){
      return const Text("No Hay ToDos");
    }
    return ListView.separated(
      itemBuilder: (context, index) => ToDoListRow(
        toDo: toDos[index],
        onListTap: onListTap
      ),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: toDos.length
    );
  }
}