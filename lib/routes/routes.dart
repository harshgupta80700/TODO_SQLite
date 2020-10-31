import 'package:flutter/material.dart';
import 'package:todo_sqlite/views/categories.dart';
import 'package:todo_sqlite/views/home.dart';
import 'package:todo_sqlite/views/test.dart';

class AppRoutes{
  static const String HOME = '/';
  static const String CATEGORIES = '/categories';
  static const String TEST = '/test';
}

Map<String,WidgetBuilder> routes = {
  AppRoutes.HOME: (context) => Homescreen(),
  AppRoutes.CATEGORIES: (context) => Categories(),
  AppRoutes.TEST:(context) => TestPage()
};