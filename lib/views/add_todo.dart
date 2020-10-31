import 'package:flutter/material.dart';
import 'package:todo_sqlite/database/todo_database.dart';
import 'package:todo_sqlite/shared/appbar.dart';

class AddTodo extends StatefulWidget {
  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {

  final _nameTextEditingController = TextEditingController();
  final _descTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Name"
              ),
              controller: _nameTextEditingController,
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Description"
              ),
              controller: _descTextEditingController,
            ),

            SizedBox(height: 25,),

            RaisedButton(
              color: Colors.black,
                textColor: Colors.white,
                child: Text("SUBMIT"),
                onPressed: (){
                  TodoDatabase.instance.insertTodo({
                    TodoDatabase.columnName: _nameTextEditingController.text,
                    TodoDatabase.columnDesc: _descTextEditingController.text
                  });

                  Navigator.pop(context);

                }
            )

          ],
        ),
      ),
    );
  }
}
