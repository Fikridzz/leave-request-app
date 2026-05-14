import 'package:leave_request_app/data/response/user_response.dart';
import 'package:leave_request_app/domain/model/user.dart';

abstract class UserRepository {
  Future<void> insertUser(User user);
  Future<UserResponse?> login(String email, String password);
  
}