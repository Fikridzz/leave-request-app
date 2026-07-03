import 'dart:io';

import 'package:leave_request_app/constants/submission_status.dart';

class DataLeaveForm {
  final String? type;
  final String? submissionDate;
  final String? startDate;
  final int? totalDays;
  final String? reasone;
  final SubmissionStatus status;
  final File? autograph;

  DataLeaveForm({
    this.type,
    this.submissionDate,
    this.startDate,
    this.totalDays,
    this.reasone,
    this.status = SubmissionStatus.pending,
    this.autograph,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'type': type,
      'submission_date': submissionDate,
      'start_date': startDate,
      'total_days': totalDays,
      'reason': reasone,
      'status': status.name,
      'autograph': autograph,
    };

    return map;
  }

  factory DataLeaveForm.fromMap(Map<String, dynamic> map) {
    return DataLeaveForm(
      type: map['type'],
      submissionDate: map['submission_date'],
      startDate: map['start_date'],
      totalDays: map['total_days'],
      reasone: map['reason'],
      status: map['status'],
      autograph: map['autograph'],
    );
  }
}
