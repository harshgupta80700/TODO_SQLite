import 'package:flutter/cupertino.dart';
import 'package:todo_sqlite/models/todo_model.dart';

class TodoProvider extends ChangeNotifier{

  List<TodoModel> _todos = [];
  List<TodoModel> get todo => _todos;
  set todo(List<TodoModel> todos){
    _todos = todos;
    notifyListeners();
  }

}