// import 'package:project/utils/models.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class DatabaseHelper {
//   static final DatabaseHelper instance = DatabaseHelper._init();

//   static Database? _database;

//   DatabaseHelper._init();

//   Future<Database> get database async {
//     if (_database != null) return _database!;

//     _database = await _initDB('poems.db');
//     return _database!;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);

//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }

//   Future<void> _createDB(Database db, int version) async {
//     await db.execute('''
//       CREATE TABLE dogs(
//         id INTEGER PRIMARY KEY,
//         name TEXT,
//         age INTEGER
//       )
//     ''');
//   }

//   Future<int> insertDog(PoemModel dog) async {
//     final db = await instance.database;
//     return await db.insert('poems', dog.toMap());
//   }

//   Future<List<PoemModel>> getPoems() async {
//     final db = await instance.database;
//     final maps = await db.query('poems');
//     return List.generate(maps.length, (i) {
//       return PoemModel(
//         id: maps[i]['id'],
//         poem_id: maps[i]['poem_id'],
//         text: maps[i]['text'],
//       );
//     });
//   }
// }
