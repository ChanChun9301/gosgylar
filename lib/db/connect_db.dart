// import 'dart:async';
// import 'dart:developer';
// import 'dart:io';
// import 'package:gosgy/utils/models.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseHelper {
//   static final _databaseName = "gosgy.sql";
//   static final _databaseVersion = 1;

//   static final table = 'gosgy';
//   static final columnId = 'id';
//   static final columnTitle = 'title';
//   static final columnCategory = 'category';

//   // make this a singleton class
//   DatabaseHelper._privateConstructor();
//   static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

//   // only have a single app-wide reference to the database
//   static Database? _database;
//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await _initDatabase();
//     return _database!;
//   }

//   // this opens the database (and creates it if it doesn't exist)
//   _initDatabase() async {
//     String path = join(await getDatabasesPath(), _databaseName);
//     log(path.toString());
//     return await openDatabase(path, version: _databaseVersion,
//         onCreate: (db, version) {
//       db.execute('''
//           CREATE TABLE $table (
//             $columnId INTEGER PRIMARY KEY AUTO_INCREMENT,
//             $columnTitle TEXT NOT NULL,
//             $columnCategory INTEGER NOT NULL
//           )
//           ''');
//     });
//   }
// }

// Future<List<PoemModel>> getData() async {
//   final database = await openMyDatabase();
//   log(database.toString()+'<<>>');
//   final data = await database.query('gosgy');
//   return data.map((row) => PoemModel.fromMap(row)).toList();
// }

// Future<Database> openMyDatabase() async {
//   final dbPath = await getDatabasesPath();
//   final path = join(dbPath, 'gosgy.sql');
//   final database = await openDatabase(
//     path,
//     version: 1,
//     onCreate: (db, version) async {
//       // Create tables here
//     },
//   );
//   return database;
// }
