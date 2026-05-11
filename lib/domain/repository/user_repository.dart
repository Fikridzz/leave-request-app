import 'package:leave_request_app/domain/model/user.dart';

abstract class UserRepository {
  Future<void> insertUser(User user);
  Future<User?> login(String email, String password);
  
}