class DataSickForm {
  final int? id;
  final String? employeeName;
  final String? department;
  final String? submissionDate;
  final String? sickDate;
  final int? totalSickDate;
  // final String? autograph;
  final int? userId;

  DataSickForm({
    this.id,
    this.employeeName,
    this.department,
    this.submissionDate,
    this.sickDate,
    this.totalSickDate,
    // this.autograph,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'employee_name': employeeName,
      'department': department,
      'submission_date': submissionDate,
      'sick_date': sickDate,
      'total_sick_date': totalSickDate,
      // 'autograph': autograph,
      'user_id': userId,
    };
    return map;
  }

  factory DataSickForm.fromJson(Map<String, dynamic> map) {
    return DataSickForm(
      id: map['id'],
      employeeName: map['employee_name'],
      department: map['department'],
      submissionDate: map['submission_date'],
      sickDate: map['sick_date'],
      totalSickDate: map['total_sick_date'],
      // autograph: map['autograph'],
      userId: map['user_id'],
    );
  }
}
