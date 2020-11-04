/*import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
class Database{


  static final _dbname = 'Hospital.db';
  static final _dbversion = 1;
  static final _table1 = 'patient';
  static final _table2 = 'doctor';
  static final _table3 = 'book';
  static final _table4 = 'medicine';


  //making it a singleton class
  Database._privateConstructor();
  static final Database instance = Database._privateConstructor();

  static Database _database;
  Future<Database> get database async{
    if(_database!=null) return _database;


    _database = await _initiateDatabase();
    return _database;
  }

  _initiateDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,_dbname);

    return await openDatabase(path,version: _dbversion,onCreate: _oncreate);

  }

  Future _oncreate(Database db,int version) async{
    db.query(
      '''
      CREATE TABLE $_table1
      '''

    );

  }





}
*/
