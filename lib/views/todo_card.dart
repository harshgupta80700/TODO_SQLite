import 'package:flutter/material.dart';
import 'package:todo_sqlite/database/todo_database.dart';
import 'package:todo_sqlite/models/todo_model.dart';
import 'package:todo_sqlite/routes/routes.dart';

class TodoCard extends StatelessWidget {

  final TodoModel todoModel;
  TodoCard({this.todoModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Colors.black),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(todoModel.name),
              Row(
                children: [
                  IconButton(icon: Icon(Icons.edit,color: Colors.black,), onPressed: (){
                    Navigator.pushNamed(context, AppRoutes.UPDATE_TODO,arguments: todoModel);
                  }),
                  IconButton(icon: Icon(Icons.delete,color: Colors.red,), onPressed: (){
                    TodoDatabase.instance.deleteTodo(todoModel.id);
                  }),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(todoModel.desc)
        ],
      ),
    );
  }
}
