import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:leave_request_app/domain/repository/home_repository.dart';
import 'package:leave_request_app/helper/db_helper.dart';

part 'home_repository.g.dart';

class HomeRepositoryImpl implements HomeRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  Future<List<EmployeeForm>> employeeForms(int userId) async {
    final db = await _dbHelper.database;
    final List<Map<String, dynamic>> maps = await db.rawQuery(
      '''
    SELECT 
      'Cuti' as type, 
      employee_name, department, submission_date, leave_date as eventDate, total_leave_day as totalDays, user_id 
    FROM leave_form 
    WHERE user_id = ?
    
    UNION ALL
    
    SELECT 
      'Sakit' as type, 
      employee_name, department, submission_date, sick_date as eventDate, total_sick_date as totalDays, user_id 
    FROM sick_form 
    WHERE user_id = ?
    
    ORDER BY submission_date ASC
  ''',
      [userId, userId],
    );

    return List.generate(maps.length, (i) {
      return EmployeeForm.fromMap(maps[i]);
    });
  }
}

@riverpod
HomeRepository homeRepository(Ref ref) {
  return HomeRepositoryImpl();
}
