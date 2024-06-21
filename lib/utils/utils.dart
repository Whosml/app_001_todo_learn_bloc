import 'package:app_001_todo_learn_bloc/utils/nav_utils.dart';
import 'package:flutter/material.dart';

Future<void> showSnackBar(String message) async {
  clearAllSnackbars();
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(content: Text(message)));
}

void clearAllSnackbars() {
  ScaffoldMessenger.of(navigatorKey.currentContext!).clearSnackBars();
}