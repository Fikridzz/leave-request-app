class EmployeeForm {
  final int id;
  final String? type;
  final String? name;
  final String? department;
  final String? submissionDate;
  final String? startDate;
  final int? totalDays;
  final String? reason;
  final String? status;
  final String? autograph;

  EmployeeForm({
    this.id = 0,
    this.type,
    this.name,
    this.department,
    this.submissionDate,
    this.startDate,
    this.totalDays,
    this.reason,
    this.status,
    this.autograph,
  });

  factory EmployeeForm.fromMap(Map<String, dynamic> map) {
    return EmployeeForm(
      id: map['id'],
      type: map['type'],
      name: map['employee_name'],
      department: map['department'],
      submissionDate: map['submission_date'],
      startDate: map['start_date'],
      totalDays: map['total_days'],
    );
  }
}
