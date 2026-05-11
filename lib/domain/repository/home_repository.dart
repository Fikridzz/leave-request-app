import 'package:leave_request_app/domain/model/employee_form.dart';

abstract class HomeRepository {
  Future<List<EmployeeForm>> employeeForms(int userId);
}