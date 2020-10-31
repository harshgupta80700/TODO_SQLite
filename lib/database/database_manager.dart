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
    return await openDatabase(path,version: _dbVersion,onCreate: _onCreateDatabase);
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
    Database db = await instance.database;
    return await db.insert(_tableName, row);
  }

  Future<List<Map<String,dynamic>>> queryAll() async{
    Database db = await instance.database;
    return await db.query(_tableName);
  }

  Future<int> update(Map<String,dynamic> row) async{
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(_tableName, row,where: '$columnId = ?',whereArgs: [id]);
  }

  Future<int> delete(int id) async{
    Database db = await instance.database;
    return await db.delete(_tableName,where:'$columnId = ?',whereArgs: [id]);
  }
}