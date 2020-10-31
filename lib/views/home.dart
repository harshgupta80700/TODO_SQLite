import 'package:flutter/material.dart';
import 'package:todo_sqlite/database/todo_database.dart';
import 'package:todo_sqlite/shared/appbar.dart';
import 'package:todo_sqlite/views/todo_list.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: TodoList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: (){
          TodoDatabase.instance.insertTodo({
            TodoDatabase.columnName: 'harsh',
            TodoDatabase.columnDesc: 'Description'
          });
        },
      ),
    );
  }
}
