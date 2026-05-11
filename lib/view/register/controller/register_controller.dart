import 'package:shared_preferences/shared_preferences.dart';
import 'package:leave_request_app/data/repository/user_repository_impl.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  Future<void> build() async {}

  Future<void> insertUser({
    required User user,
    required Function() onSuccess,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = ref.watch(userRepositoryProvider);
      repository.insertUser(user);
    });

    if (state.hasError == false) {
      onSuccess();
    }
  }
}
