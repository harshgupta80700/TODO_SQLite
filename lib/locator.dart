import 'package:get_it/get_it.dart';
import 'package:todo_sqlite/provider/todo_provider.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => TodoProvider());
}