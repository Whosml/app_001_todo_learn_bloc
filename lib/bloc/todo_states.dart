import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class ToDoState extends Equatable{
  const ToDoState ();
}

class ToDoInitState extends Equatable {
  const ToDoInitState ();
  @override
  List<Object?> get props => [];  
}

class Initializated extends Equatable {
  const Initializated();
  @override
  List<Object?> get props => [];  
}

class ToDoCurrentState extends Equatable {
  const ToDoCurrentState ();
  @override
  List<Object?> get props => [];  
}

class ToDoLoadingtate extends Equatable {
  const ToDoLoadingtate ();
  @override
  List<Object?> get props => [];  
}
class ToDoLoadedstate extends Equatable {
  const ToDoLoadedstate ();
  @override
  List<Object?> get props => [];  
}

class ToDoErrorState extends Equatable {
  const ToDoErrorState ();
  @override
  List<Object?> get props => [];  
}

class ToDoAddInProgressState extends Equatable {
  const ToDoAddInProgressState ();
  @override
  List<Object?> get props => [];  
}

class ToDoAddState extends Equatable {
  const ToDoAddState ();
  @override
  List<Object?> get props => [];  
}

class ToDoUpdateInProgressState extends Equatable {
  const ToDoUpdateInProgressState ();
  @override
  List<Object?> get props => [];  
}

class ToDoUpdateState extends Equatable {
  const ToDoUpdateState ();
  @override
  List<Object?> get props => [];  
}

class ToDoDeleteInProgressState extends Equatable {
  const ToDoDeleteInProgressState ();
  @override
  List<Object?> get props => [];  
}

class ToDoDeleteState extends Equatable {
  const ToDoDeleteState ();
  @override
  List<Object?> get props => [];  
}

