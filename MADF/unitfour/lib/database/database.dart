import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  static final MyDatabase instance = MyDatabase._init();
  static Database? _database;

  MyDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('todos.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE todos (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL
          )
        ''');
      },
    );
  }

  Future<int> insertTodo(String title) async {
    final db = await database;
    return await db.insert('todos', {'title': title});
  }

  Future<List<Map<String, dynamic>>> fetchTodos() async {
    final db = await database;
    return await db.query('todos', orderBy: 'id DESC');
  }

  Future<int> updateTodo(int id, String newTitle) async {
    final db = await database;
    return await db.update('todos', {'title': newTitle}, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteTodo(int id) async {
    final db = await database;
    return await db.delete('todos', where: 'id = ?', whereArgs: [id]);
  }
}
