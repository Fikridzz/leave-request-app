import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:leave_request_app/view/home/controller/home_controller.dart';

class SubmissionView extends HookConsumerWidget {
  const SubmissionView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getEmployeeForm = ref.watch(getEmployeeFormProvider);

    return Padding(
      padding: const EdgeInsets.all(36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pengajuan',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: getEmployeeForm.when(
              data: (data) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [SizedBox(height: 24), itemForm(data[index])],
                    );
                  },
                );
              },
              error: (e, stackTrace) {
                print(e);
                return SizedBox();
              },
              loading: () => SizedBox(),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemForm(EmployeeForm data) {
    final Random random = math.Random();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pengajuan ${data.type}',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              _formStatus(random.nextInt(2)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Nama'), Text(data.employeeName ?? '-')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Tanggal pengajuan'), Text(data.submissionDate ?? '-')],
          ),
        ],
      ),
    );
  }

  Widget _formStatus(int status) {
    switch (status) {
      case 0:
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
      case 1:
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
      case 2:
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
      default:
        return Container();
    }
  }
}
