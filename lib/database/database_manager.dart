import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseManager{

  DataBaseManager._privateConstructor();

  static final DataBaseManager instance = DataBaseManager._privateConstructor();

  static final _dbName = 'myDatabase.db';
  static final _dbVersion = 1;
  static final _tableName = 'myTable';

  static final columnName = 'name';
  static final columnId = '_id';

  static Database _database;

  Future<Database> get database async{
    if(_database!=null)
      return _database;

    _database = await _initialiseDatabase();
    return _database;
  }

  _initialiseDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path =  join(directory.path,_dbName);
    await openDatabase(path,version: _dbVersion,onCreate: _onCreateDatabase);
  }

  Future _onCreateDatabase(Database db, int version) async{
    db.execute('''
    CREATE TABLE $_tableName(
      $columnId INTEGER PRIMARY KEY,
      $columnName TEXT NOT NULL
    )    
    ''');
  }

  Future<int> insert(Map<String,dynamic> row) async{

  }

  Future<List<Map<String,dynamic>>> queryAll() async{

  }

  Future<int> deleteRow() async{

  }

  Future delete() async{

  }




}