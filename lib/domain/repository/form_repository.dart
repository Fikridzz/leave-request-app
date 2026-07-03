import 'package:leave_request_app/constants/submission_status.dart';
import 'package:leave_request_app/data/response/leave_request_response.dart';
import 'package:leave_request_app/domain/model/data_leave_form.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';

abstract class FormRepository {
  Future<void> createForm(DataLeaveForm data);
  Future<LeaveRequestResponse> employeeForms();
  Future<LeaveRequestResponse> employeeFormsStatus(String status);
  Future<void> updateFormStatus(EmployeeForm data, String status);
}
