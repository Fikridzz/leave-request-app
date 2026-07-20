import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/constants/submission_status.dart';
import 'package:leave_request_app/constants/submission_type.dart';
import 'package:leave_request_app/domain/model/employee_form.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';
import 'package:leave_request_app/helper/string_extension.dart';
import 'package:leave_request_app/view/home/controller/home_controller.dart';
import 'package:leave_request_app/widgets/form_status.dart';

class SubmissionView extends HookConsumerWidget {
  const SubmissionView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeeForm = ref.watch(getEmployeeFormProvider);
    final employeeFormStatus = ref.watch(
      getEmployeeFormStatusProvider(SubmissionStatus.pending.name),
    );
    final storage = ref.read(authStorageServiceProvider);

    return storage.getUser()?.role == 'admin'
        ? DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Pengajuan'),
                    Tab(text: 'Mengajukan'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36,
                      top: 36,
                      right: 36,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentGeometry.topLeft,
                          child: Text(
                            'Pengajuan',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: employeeForm.when(
                            data: (data) {
                              return ListView.builder(
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(height: 24),
                                      itemForm(data[index], context, ref, true),
                                    ],
                                  );
                                },
                              );
                            },
                            error: (e, stackTrace) {
                              return SizedBox();
                            },
                            loading: () =>
                                Center(child: CircularProgressIndicator()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36,
                      top: 36,
                      right: 36,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mengajukan',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: employeeFormStatus.when(
                            data: (data) {
                              return ListView.builder(
                                itemCount: data.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(height: 24),
                                      itemForm(
                                        data[index],
                                        context,
                                        ref,
                                        false,
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            error: (e, stackTrace) {
                              return SizedBox();
                            },
                            loading: () =>
                                Center(child: CircularProgressIndicator()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 36, top: 36, right: 36),
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
                  child: employeeForm.when(
                    data: (data) {
                      return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(height: 24),
                              itemForm(data[index], context, ref, false),
                            ],
                          );
                        },
                      );
                    },
                    error: (e, stackTrace) {
                      return SizedBox();
                    },
                    loading: () => Center(child: CircularProgressIndicator()),
                  ),
                ),
              ],
            ),
          );
  }

  Widget itemForm(
    EmployeeForm data,
    BuildContext context,
    WidgetRef ref,
    bool isSubmission,
  ) {
    return GestureDetector(
      onTap: () async {
        if (data.type == SubmissionType.leave.name) {
          await context.push(
            '/form-leave',
            extra: {'data': data, 'is_submission': isSubmission},
          );
          ref.invalidate(getEmployeeFormProvider);
          ref.invalidate(
            getEmployeeFormStatusProvider(SubmissionStatus.pending.name),
          );
        } else {
          await context.push(
            '/form-sick',
            extra: {'data': data, 'is_submission': isSubmission},
          );
          ref.invalidate(getEmployeeFormProvider);
          ref.invalidate(
            getEmployeeFormStatusProvider(SubmissionStatus.pending.name),
          );
        }
      },
      child: Container(
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
                  "Pengajuan ${data.type == 'leave' ? 'Cuti' : 'Sakit'}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                formStatus(data.status ?? ''),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nama'),
                Expanded(
                  child: Text(data.name ?? '-', textAlign: TextAlign.end),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tanggal pengajuan'),
                Text(data.submissionDate.ddMMMyyyy()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
