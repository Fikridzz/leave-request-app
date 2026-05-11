import 'package:leave_request_app/domain/model/data_leave_form.dart';
import 'package:leave_request_app/domain/model/data_sick_form.dart';

abstract class FormRepository {
  Future<void> insertLeaveForm(DataLeaveForm data);
  Future<void> insertSickForm(DataSickForm data);
}
