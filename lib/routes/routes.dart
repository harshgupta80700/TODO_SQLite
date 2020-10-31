import 'package:flutter/material.dart';
import 'package:todo_sqlite/views/add_todo.dart';
import 'package:todo_sqlite/views/categories.dart';
import 'package:todo_sqlite/views/home.dart';
import 'package:todo_sqlite/views/test.dart';
import 'package:todo_sqlite/views/update_todo.dart';

class AppRoutes{
  static const String HOME = '/';
  static const String CATEGORIES = '/categories';
  static const String TEST = '/test';
  static const String ADD_TODO = "/addTodo";
  static const String UPDATE_TODO = "/updateTodo";
}

Map<String,WidgetBuilder> routes = {
  AppRoutes.HOME: (context) => Homescreen(),
  AppRoutes.CATEGORIES: (context) => Categories(),
  AppRoutes.TEST:(context) => TestPage(),
  AppRoutes.ADD_TODO:(context) => AddTodo(),
  AppRoutes.UPDATE_TODO:(context) => UpdateTodo()
};