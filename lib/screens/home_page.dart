import 'package:app_001_todo_learn_bloc/bloc/todo_bloc.dart';
import 'package:app_001_todo_learn_bloc/bloc/todo_states.dart';
import 'package:app_001_todo_learn_bloc/utils/bloc_utils.dart';
import 'package:app_001_todo_learn_bloc/utils/utils.dart';
import 'package:app_001_todo_learn_bloc/widgets/todo_list_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text ("To Do Main"),
        actions: [],
      ),
      body: BlocListener<ToDoBloc, ToDoState>(
        listener: (context, state){
          if (state is Initializated) {refreshToDo(context);}

        },
        child: BlocBuilder (builder: (context, state){
          if (state is Initializated)    {return const Text("Inicializado");}
          if (state is ToDoLoadingState) {return const Text("Cargando ToDos");}
          if (state is ToDoLoadedState)  {
            return ToDoListUI(toDos: state.toDos, onListTap: (toDo){
              clearAllSnackbars();
              setToDo(context, toDo);
              // open Add To
            });
          }
          if (state is ToDoErrorState)   {return       Text("Error ${state.error}");}
          return const SizedBox.shrink();
        },),
      ),
    );
  }
}