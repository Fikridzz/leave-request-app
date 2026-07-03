import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/data/repository/form_repository_impl.dart';
import 'package:leave_request_app/data/repository/user_repository_impl.dart';
import 'package:leave_request_app/data/response/leave_request_response.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';
import 'package:leave_request_app/helper/data_mapper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/helper/shared_preferences_provider.dart';

part 'home_controller.g.dart';

@riverpod
FutureOr<List<EmployeeForm>> getEmployeeForm(Ref ref) async {
  final response = await ref.watch(formRepositoryProvider).employeeForms();
  final employeForm = response.mapToEmployeeForm();

  return employeForm;
}

@riverpod
FutureOr<List<EmployeeForm>> getEmployeeFormStatus(Ref ref, String status) async {
  final response = await ref.watch(formRepositoryProvider).employeeFormsStatus(status);
  final employeForm = response.mapToEmployeeForm();

  return employeForm;
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<void> build() => ();

  Future<void> logout() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      ref.read(userRepositoryProvider).logout();
      final storage = ref.watch(authStorageServiceProvider);
      storage.clearAll();
    });
  }
}
