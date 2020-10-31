import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_sqlite/locator.dart';
import 'package:todo_sqlite/provider/todo_provider.dart';
import 'package:todo_sqlite/views/todo_card.dart';

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
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: TodoCard(todoModel: provider.todo[index],),
              );
            },
          );
        }
    );
  }
}
