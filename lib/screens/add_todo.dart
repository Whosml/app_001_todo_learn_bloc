import 'dart:async';

import 'package:app_001_todo_learn_bloc/bloc/todo_bloc.dart';
import 'package:app_001_todo_learn_bloc/bloc/todo_states.dart';
import 'package:app_001_todo_learn_bloc/model/todo.dart';
import 'package:app_001_todo_learn_bloc/utils/bloc_utils.dart';
import 'package:app_001_todo_learn_bloc/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToDoPage extends StatelessWidget {
  const AddToDoPage({super.key, this.toDo});
  final ToDo? toDo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: Text(null == toDo? "New Todo":"Edit ToDo"),
        actions: [],
      ),
      body: Container(),
    );
  }

  Future<void> blocListener(BuildContext context, ToDoState state)async{
    if (state is ToDoAddState)    { if (state.success){ unawaited(showSnackBar("ToDo guardo exitosamente!!"));      refreshToDo(context); return;} unawaited(showSnackBar("Error al Guardar ToDo!!"));}
    if (state is ToDoUpdateState) { if (state.success){ unawaited(showSnackBar("ToDo Actualizado exitosamente!!")); refreshToDo(context); return;} unawaited(showSnackBar("Error al Actualizar ToDo!!"));}
    if (state is ToDoDeleteState) { if (state.success){ unawaited(showSnackBar("ToDo Eliminado exitosamente!!"));   refreshToDo(context); return;} unawaited(showSnackBar("Error al Eliminar ToDo!!"));}
  }

  

  Widget _addEditUI() {
    return BlocListener<ToDoBloc, ToDoState>(
      listener: blocListener,
      child:    BlocBuilder(builder: (context, state){
        if (state is ToDoAddInProgressState)   {return const Center(child: Text("Guardando el Todo..."),);}
        if (state is ToDoUpdateInProgressState){return const Center(child: Text("Actualizando el Todo..."),);}
        if (state is ToDoDeleteInProgressState){return const Center(child: Text("Eliminando el Todo..."),);}
        return _formUI(context);
      })
    );
  }

  Widget _formUI(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(children: [
        TextFormField(
          decoration: const InputDecoration(hintText: "Agrega una Nota"),
          initialValue: toDo?.note,
          onChanged: (value){
            if (null == toDo) {
              final newToDo = ToDo();
              newToDo.note = value;
              setToDo(context, newToDo);
              return;
            }
            toDo?.note = value;
            setToDo(context, toDo!);
          },
        ),
        
      ])
    );
  }
}

