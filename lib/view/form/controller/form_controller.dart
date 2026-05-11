import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/data/repository/form_repository_impl.dart';
import 'package:leave_request_app/domain/model/data_leave_form.dart';
import 'package:leave_request_app/domain/model/data_sick_form.dart';
import 'package:leave_request_app/domain/repository/form_repository.dart';

part 'form_controller.g.dart';

@riverpod
class FormController extends _$FormController {
  @override
  FutureOr<void> build() => ();

  Future<void> insertLeaveForm(DataLeaveForm data) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = ref.watch(formRepositoryProvider);
      repository.insertLeaveForm(data);
    });
  }

  Future<void> insertSickForm(DataSickForm data) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repository = ref.watch(formRepositoryProvider);
      repository.insertSickForm(data);
    });
  }
}
