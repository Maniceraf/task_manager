import 'package:flutter/material.dart';
import 'package:task_manager/models/task.dart';
import 'package:task_manager/routes/pages.dart';
import 'package:task_manager/screens/new_task_screen.dart';
import 'package:task_manager/screens/page_not_found.dart';
import 'package:task_manager/screens/splash_screen.dart';
import 'package:task_manager/screens/tasks_screen.dart';
import 'package:task_manager/screens/update_task_screen.dart';

Route onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Pages.initial:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case Pages.home:
      return MaterialPageRoute(
        builder: (context) => const TasksScreen(),
      );
    case Pages.createNewTask:
      return MaterialPageRoute(
        builder: (context) => const NewTaskScreen(),
      );
    case Pages.updateTask:
      final args = routeSettings.arguments as TaskModel;
      return MaterialPageRoute(
        builder: (context) => UpdateTaskScreen(taskModel: args),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const PageNotFound(),
      );
  }
}
