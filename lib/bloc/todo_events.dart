import 'package:app_001_todo_learn_bloc/model/todo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ToDoEvent extends Equatable{
  const ToDoEvent ();
}

class InitializeEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class SetToDoNoteEvent extends ToDoEvent {
  final ToDo toDo;
  const SetToDoNoteEvent(this.toDo);  
  @override
  List<Object?> get props => [];
}

class LoadToDoEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class AddToDoInProgressEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class AddToDoEvent extends ToDoEvent {
  final ToDo toDo;
  const AddToDoEvent(this.toDo);
  @override
  List<Object?> get props => [];
}

class UpdateToDoInProgressEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class UpdateToDoEvent extends ToDoEvent {
  final ToDo toDo;
  const UpdateToDoEvent(this.toDo);
  @override
  List<Object?> get props => [];
}

class DeleteToDoInProgressEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class DeleteToDoEvent extends ToDoEvent {
  final ToDo toDo;
  const DeleteToDoEvent(this.toDo);
  @override
  List<Object?> get props => [];
}

