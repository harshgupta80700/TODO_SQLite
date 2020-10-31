import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_sqlite/locator.dart';
import 'package:todo_sqlite/provider/todo_provider.dart';

List<SingleChildWidget> supplyProvider(){

  return[
    ChangeNotifierProvider(
        create: (_) => locator<TodoProvider>())
  ];

}