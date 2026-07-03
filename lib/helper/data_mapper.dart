import 'package:leave_request_app/data/response/leave_request_response.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';

extension ListEmployeFormMapper on LeaveRequestResponse {
  List<EmployeeForm> mapToEmployeeForm() {
    List<EmployeeForm> employeeForm = [];

    for (var i = 0; i < data!.length; i++) {
      final value = data?[i];
      employeeForm.add(value?.mapToDetail() ?? EmployeeForm());
    }

    return employeeForm;
  }
}

extension EmployeFormMapper on EmployeeFormResponse {
  EmployeeForm mapToDetail() => EmployeeForm(
    id: id,
    type: type,
    name: user?.name,
    department: user?.department,
    submissionDate: submissionDate,
    startDate: startDate,
    totalDays: totalDays,
    reason: reason,
    status: status,
  );
}
