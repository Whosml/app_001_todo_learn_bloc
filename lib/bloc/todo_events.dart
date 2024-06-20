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
  @override
  List<Object?> get props => [];
}

class LoadToDoEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class AddToDoEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class AddToDoInProgressEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class UpdateToDoEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class UpdateToDoInProgressEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class DeleteToDoEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class DeleteToDoInProgressEvent extends ToDoEvent {
  @override
  List<Object?> get props => [];
}
