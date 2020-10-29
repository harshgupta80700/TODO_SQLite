import 'package:flutter/material.dart';
import 'package:todo_sqlite/views/categories.dart';
import 'package:todo_sqlite/views/home.dart';

class AppRoutes{
  static const String HOME = '/';
  static const String CATEGORIES = '/categories';
}

Map<String,WidgetBuilder> routes = {
  AppRoutes.HOME: (context) => Homescreen(),
  AppRoutes.CATEGORIES: (context) => Categories()
};