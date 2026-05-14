import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/data/repository/home_repository.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/helper/shared_preferences_provider.dart';

part 'home_controller.g.dart';

@riverpod
FutureOr<List<EmployeeForm>> getEmployeeForm(Ref ref) async {

  return [];
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<void> build() => ();

  Future<void> logout() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      final storage = ref.watch(authStorageServiceProvider);
      storage.clearAll();
    });
  }
}
