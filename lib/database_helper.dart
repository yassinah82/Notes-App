// ignore_for_file: prefer_const_declarations

import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class DBHelper {
  static Database? db;

  static Future<void> createDB() async {
    databaseFactoryOrNull = databaseFactoryFfiWeb;
    print('Creating database...');
    if (db != null) {
      print('not null db');
    } else {
      try {
        String path = "${await getDatabasesPath()}/notes.db";
      } catch (error) {
        print("error in creation is $error");
      }
      print('Database created.');
    }
  }

  static Future<void> insertToDB(title, note) async {
    try {} catch (error) {
      print("Error in insert is $error");
    }
  }

  static Future<List<Map<String, dynamic>>?> getDataFromDB() async {}
}
