class EmployeeForm {
  final String? type;
  final String? employeeName;
  final String? department;
  final String? submissionDate;
  final String? eventDate;
  final int? totalDays;   
  final int? userId;

  EmployeeForm({
    this.type,
    this.employeeName,
    this.department,
    this.submissionDate,
    this.eventDate,
    this.totalDays,
    this.userId,
  });

  factory EmployeeForm.fromMap(Map<String, dynamic> map) {
    return EmployeeForm(
      type: map['type'],
      employeeName: map['employee_name'],
      department: map['department'],
      submissionDate: map['submission_date'],
      eventDate: map['event_date'],
      totalDays: map['total_days'],
      userId: map['user_id'],
    );
  }
}