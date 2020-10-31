import 'package:flutter/material.dart';
import 'package:todo_sqlite/database/todo_database.dart';
import 'package:todo_sqlite/models/todo_model.dart';
import 'package:todo_sqlite/shared/appbar.dart';

class UpdateTodo extends StatefulWidget {
  @override
  _UpdateTodoState createState() => _UpdateTodoState();
}

class _UpdateTodoState extends State<UpdateTodo> {

  final _nameTextEditingController = TextEditingController();
  final _descTextEditingController = TextEditingController();
  TodoModel todoModel;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    todoModel = ModalRoute.of(context).settings.arguments;
    _nameTextEditingController.text = todoModel.name;
    _descTextEditingController.text = todoModel.desc;
    setState(() {

    });

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
                child: Text("UPDATE"),
                onPressed: (){
                  TodoDatabase.instance.updateTodo({
                    TodoDatabase.columnName: _nameTextEditingController.text,
                    TodoDatabase.columnDesc: _descTextEditingController.text,
                    TodoDatabase.columnId: todoModel.id
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
