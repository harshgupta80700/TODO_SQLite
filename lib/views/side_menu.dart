import 'package:flutter/material.dart';
import 'package:todo_sqlite/routes/routes.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
              ),
              accountName: Text("HARSH GUPTA"),
              accountEmail: Text("harshgupta.80700@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.black
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text("HOME"),
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, AppRoutes.HOME, (route) => false);
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list,color: Colors.black,),
              title: Text("CATEGORIES"),
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Categories()));
                Navigator.pushNamed(context, AppRoutes.CATEGORIES);
              },
            )
          ],
        ),
      ),
    );
  }
}
