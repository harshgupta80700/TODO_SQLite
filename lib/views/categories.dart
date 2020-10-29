import 'package:flutter/material.dart';
import 'package:todo_sqlite/shared/appbar.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
    );
  }
}
