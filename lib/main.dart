import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_sqlite/locator.dart';
import 'package:todo_sqlite/provider/supply_provider.dart';
import 'package:todo_sqlite/routes/routes.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: supplyProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: routes,
        initialRoute: AppRoutes.HOME,
      ),
    );
  }
}


