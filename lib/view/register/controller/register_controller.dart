import 'package:leave_request_app/data/response/user_response.dart';
import 'package:leave_request_app/domain/model/data_user.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';
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
    required DataUser data,
    required Function() onSuccess,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final response = await ref.read(userRepositoryProvider).insertUser(data);

      if (response != null) {
        final storage = ref.read(authStorageServiceProvider);
        User user = response.map(
          (e) => User(
            id: e.id,
            name: e.name ?? '',
            phone: e.phone ?? '',
            department: e.department,
            phoneNumber: 0,
            email: e.email ?? '',
            role: e.role ?? '',
          ),
        );

        storage.saveToken(response.accessToken ?? '');
        storage.saveUser(user.toMap());
      }
    });

    if (state.hasError == false) {
      onSuccess();
    }
  }
}
