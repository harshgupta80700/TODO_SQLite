import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase{

  TodoDatabase._getInstance();

  static final TodoDatabase instance = TodoDatabase._getInstance();

  static final _dbName = 'todo_database.db';
  static final _dbVersion = 1;
  static final _tableName = 'todoTable';
  static final columnName = 'name';
  static final columnDesc = 'desc';
  static final columnId = 'id';

  static Database _database;


  Future<Database> get database async{
    if(_database!=null)
      return _database;

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase()async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,_dbName);
    return await openDatabase(path,version: _dbVersion, onCreate: _onCreateDatabase);
  }

  Future _onCreateDatabase(Database db,int version)async{
   db.execute('''
   CREATE TABLE $_tableName(
      $columnId INTEGER PRIMARY KEY,
      $columnName TEXT,
      $columnDesc TEXT
   )
   ''');
  }

  Future<int> insertTodo(Map<String,dynamic> todo) async{
    Database db =  await instance.database;
    return await db.insert(_tableName, todo);
  }

}