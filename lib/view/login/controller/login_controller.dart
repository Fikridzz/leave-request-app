import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:leave_request_app/data/repository/user_repository_impl.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/helper/shared_preferences_provider.dart';

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
      final user = await ref.watch(userRepositoryProvider).login(email, password);

      if (user != null) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool('is_loggedin', true);
        prefs.setString('user_data', jsonEncode(user.toMap()));
      }
    });

    // if (state.hasError == false) {
    //   onSuccess();
    // }
  }
}
