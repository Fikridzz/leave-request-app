import 'dart:convert';

import 'package:leave_request_app/data/response/user_response.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:leave_request_app/data/repository/user_repository_impl.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  Future<void> build() async {}

  Future<void> login({
    required String email,
    required String password,
    // required Function() onSuccess,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await ref
          .read(userRepositoryProvider)
          .login(email, password);

      if (response != null) {
        final storage = ref.read(authStorageServiceProvider);
        User user = response.map(
          (e) => User(
            id: e.id,
            name: e.name ?? '',
            department: e.department,
            phoneNumber: 0,
            email: e.email ?? '',
          ),
        );

        storage.saveToken(response.authToken ?? '');
        storage.saveUser(user.toMap());
      }
    });

    // if (state.hasError == false) {
    //   onSuccess();
    // }
  }
}
