import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/domain/model/data_leave_form.dart';
import 'package:leave_request_app/domain/model/data_sick_form.dart';
import 'package:leave_request_app/domain/repository/form_repository.dart';
import 'package:leave_request_app/helper/db_helper.dart';

part 'form_repository_impl.g.dart';

class FormRepositoryImpl implements FormRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  
  @override
  Future<void> insertLeaveForm(DataLeaveForm data) async {
    final db = await _dbHelper.database;
    await db.insert('leave_form', data.toMap());
  }

  @override
  Future<void> insertSickForm(DataSickForm data) async {
    final db = await _dbHelper.database;
    await db.insert('sick_form', data.toMap());
  }
}

@riverpod
FormRepository formRepository(Ref ref) {
  return FormRepositoryImpl();
}
