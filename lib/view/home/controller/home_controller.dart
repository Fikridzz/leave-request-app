import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/data/repository/home_repository.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/helper/shared_preferences_provider.dart';

part 'home_controller.g.dart';

@riverpod
FutureOr<List<EmployeeForm>> getEmployeeForm(Ref ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  final userData = User.fromMap(jsonDecode(prefs.getString('user_data') ?? ''));

  return await ref
      .watch(homeRepositoryProvider)
      .employeeForms(userData.id ?? 0);
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<void> build() => ();

  Future<void> logout() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      final prefs = await ref.watch(sharedPreferencesProvider.future);
      prefs.clear();
    });
  }
}
