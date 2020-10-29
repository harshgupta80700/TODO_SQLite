import 'package:flutter/material.dart';
import 'package:todo_sqlite/shared/appbar.dart';
import 'package:todo_sqlite/views/side_menu.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      drawer: SideMenu(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed: (){},
      ),
    );
  }
}
