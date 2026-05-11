import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/domain/repository/user_repository.dart';
import 'package:leave_request_app/helper/db_helper.dart';

part 'user_repository_impl.g.dart';

class UserRepositoryImpl implements UserRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  Future<void> insertUser(User user) async {
    final db = await _dbHelper.database;
    await db.insert('user', user.toMap());
  }

  @override
  Future<User?> login(String email, String password) async {
    final db = await _dbHelper.database;
    List<Map<String, dynamic>> maps = await db.query(
      'user',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (maps.isNotEmpty) {
      final data = User.fromMap(maps.first);

      return data;
    } else {
      return null;
    }
  }
}

@riverpod
UserRepository userRepository(Ref ref) {
  return UserRepositoryImpl();
}
