import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_sqlite/locator.dart';
import 'package:todo_sqlite/provider/todo_provider.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  var todoProvider = locator<TodoProvider>();

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(
        builder: (ctx,provider,child){
          return ListView.builder(
            itemCount:provider.todo.length,
            itemBuilder: (_,index){
              return ListTile(
                title: Text(provider.todo[index].name),
                leading: Text(provider.todo[index].id.toString()),
                trailing: Text(provider.todo[index].desc),
              );
            },
          );
        }
    );
  }
}
