import 'package:sqflite/sqflite.dart';
import 'package:todo_sqlite/repositories/database_connection.dart';

class Repositories{
  DatabaseConnection _databaseConnection;

  Repositories(){
    _databaseConnection = DatabaseConnection();
  }

  static Database _database;

  Future<Database> get database async{
    if(_database!=null)
      return _database;
    _database = await _databaseConnection.setDatabase();
    return _database;
  }

  insertData(table,data) async{
    var connection = await database;
    return await connection.insert(table, data);
  }

}