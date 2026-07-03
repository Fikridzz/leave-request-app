import 'package:leave_request_app/data/response/user_response.dart';
import 'package:leave_request_app/domain/model/data_user.dart';

abstract class UserRepository {
  Future<UserResponse?> insertUser(DataUser user);
  Future<UserResponse?> login(String email, String password);
  Future<void> logout();
  
}