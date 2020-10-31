import 'package:flutter/material.dart';
import 'package:todo_sqlite/database/database_manager.dart';
import 'package:todo_sqlite/shared/appbar.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(onPressed: () async{

              int result = await DataBaseManager.instance.insert({
                DataBaseManager.columnName: 'gupta'
              });

              print(result);

            }, child: Text("INSERT"),color: Colors.blue,),
            FlatButton(onPressed: () async {

              List<Map<String,dynamic>> queries = await DataBaseManager.instance.queryAll();
              print(queries);

            }, child: Text("GET"),color: Colors.pink),
            FlatButton(onPressed: () async {

              int result = await DataBaseManager.instance.delete(3);
              print(result);

            }, child: Text("DELETE"),color: Colors.red),
            FlatButton(onPressed: () async {
              int result  = await DataBaseManager.instance.update({
                DataBaseManager.columnId : 4,
                DataBaseManager.columnName: 'harsh gupta'
              });

              print(result);
            }, child: Text("UPDATE"),color: Colors.green),
          ],
        ),
      ),
    );
  }
}
