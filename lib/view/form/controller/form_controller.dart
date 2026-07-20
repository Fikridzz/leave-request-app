import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/data/repository/form_repository_impl.dart';
import 'package:leave_request_app/domain/model/data_leave_form.dart';
import 'package:leave_request_app/domain/repository/form_repository.dart';

part 'form_controller.g.dart';

@riverpod
class FormController extends _$FormController {
  @override
  FutureOr<void> build() => ();

  Future<void> createForm(DataLeaveForm data) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = ref.watch(formRepositoryProvider);
      repository.createForm(data);
    });
  }

  Future<void> updateFormStatus(EmployeeForm data, String status) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = ref.watch(formRepositoryProvider);
      repository.updateFormStatus(data, status);
    });
  }

  Future<void> deleteForm(int id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = ref.watch(formRepositoryProvider);
      repository.deleteForm(id);
    });
  }
}
