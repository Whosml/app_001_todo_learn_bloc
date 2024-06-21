import 'package:app_001_todo_learn_bloc/bloc/todo_bloc.dart';
import 'package:app_001_todo_learn_bloc/bloc/todo_events.dart';
import 'package:app_001_todo_learn_bloc/repo/todo_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ToDoBloc(ToDoRepo())..add(InitializeEvent()),
      child: MaterialApp(
        title: 'To Do with Bloc',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: Container (color: Colors.white,),
      ),
    );
  }
}