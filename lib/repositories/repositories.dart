import 'package:sqflite/sqflite.dart';
import 'package:todo_sqlite/models/categories.dart';
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

  Future<List<CategoriesModel>> readData(table) async{
    var connection = await database;
    final List<Map<String,dynamic>> maps =  await connection.query(table);
    return List.generate(maps.length, (index){
      CategoriesModel categoriesModel;
      categoriesModel.id = maps[index]['id'];
      categoriesModel.name = maps[index]['name'];
      categoriesModel.desc = maps[index]['desc'];
      return categoriesModel;
    });


  }

}