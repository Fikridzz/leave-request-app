class DataLeaveForm {
  final int? id;
  final String? employeeName;
  final String? department;
  final String? submissionDate;
  final String? leaveDate;
  final int? totalLeaveDay;
  final String? reasone;
  // final String? autograph;
  final int? userId;

  DataLeaveForm({
    this.id,
    this.employeeName,
    this.department,
    this.submissionDate,
    this.leaveDate,
    this.totalLeaveDay,
    this.reasone,
    // this.autograph,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'employee_name': employeeName,
      'department': department,
      'submission_date': submissionDate,
      'leave_date': leaveDate,
      'total_leave_day': totalLeaveDay,
      'reasone': reasone,
      // 'autograph': autograph,
      'user_id': userId,
    };

    return map;
  }

  factory DataLeaveForm.fromMap(Map<String, dynamic> map) {
    return DataLeaveForm(
      id: map['id'],
      employeeName: map['employee_namme'],
      department: map['department'],
      submissionDate: map['submission_date'],
      leaveDate: map['leave_date'],
      totalLeaveDay: map['total_leave_day'],
      reasone: map['reasone'],
      // autograph: map['autograph'],
      userId: map['user_id'],
    );
  }
}
