import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
    static Database? _database;

  DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

   Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'app_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE user (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        phone_number INT,
        email TEXT,
        password TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE sick_form (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        employee_name TEXT,
        department TEXT,
        submission_date TEXT,
        sick_date TEXT,
        total_sick_date INTEGER,
        user_id INTEGER,
        FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE 
      )
    ''');
    await db.execute('''
      CREATE TABLE leave_form (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        employee_name TEXT,
        department TEXT,
        submission_date TEXT,
        leave_date TEXT,
        total_leave_day INTEGER,
        reasone TEXT,
        user_id INTEGER,
        FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE 
      )
    ''');
  }
}