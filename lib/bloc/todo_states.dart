import 'package:app_001_todo_learn_bloc/model/todo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ToDoState extends Equatable{
  const ToDoState ();
}

class ToDoInitState extends ToDoState {
  const ToDoInitState ();
  @override
  List<Object?> get props => [];  
}

class Initializated extends ToDoState {
  const Initializated();
  @override
  List<Object?> get props => [];  
}

class ToDoCurrentState extends ToDoState {
  final ToDo toDo;
  const ToDoCurrentState (this.toDo);
  @override
  List<Object?> get props => [];  
}

class ToDoLoadingState extends ToDoState {
  const ToDoLoadingState ();
  @override
  List<Object?> get props => [];  
}
class ToDoLoadedState extends ToDoState {
  final List<ToDo> toDos;
  const ToDoLoadedState (this.toDos);
  @override
  List<Object?> get props => [];  
}

class ToDoErrorState extends ToDoState {
  final String error;
  const ToDoErrorState (this.error);
  @override
  List<Object?> get props => [];  
}

class ToDoAddInProgressState extends ToDoState {
  const ToDoAddInProgressState ();
  @override
  List<Object?> get props => [];  
}

class ToDoAddState extends ToDoState {
  final bool success;
  const ToDoAddState(this.success);
  @override
  List<Object?> get props => [];  
}

class ToDoUpdateInProgressState extends ToDoState {
  const ToDoUpdateInProgressState ();
  @override
  List<Object?> get props => [];  
}

class ToDoUpdateState extends ToDoState {
  final bool success;
  const ToDoUpdateState(this.success);
  @override
  List<Object?> get props => [];  
}

class ToDoDeleteInProgressState extends ToDoState {
  const ToDoDeleteInProgressState ();
  @override
  List<Object?> get props => [];  
}

class ToDoDeleteState extends ToDoState {
  final bool success;
  const ToDoDeleteState (this.success);
  @override
  List<Object?> get props => [];  
}

