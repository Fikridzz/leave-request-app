import 'package:flutter/material.dart';
import 'package:leave_request_app/constants/submission_status.dart';

Widget formStatus(String status) {
  switch (SubmissionStatus.values.byName(status)) {
    case SubmissionStatus.pending:
      return Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: BoxDecoration(
          color: Color(0xFFFDE7B3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          'Menunggu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color(0xFFF97A00),
          ),
        ),
      );
    case SubmissionStatus.approved:
      return Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: BoxDecoration(
          color: Color(0xFFCBF3BB),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          'Disetujui',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color(0xFF1F7D2C),
          ),
        ),
      );
    case SubmissionStatus.rejected:
      return Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: BoxDecoration(
          color: Color(0xFFF7CAC9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          'Ditolak',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color(0xFFDC143C),
          ),
        ),
      );
  }
}
