import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';

class FormView extends HookConsumerWidget {
  const FormView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.read(authStorageServiceProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Selamat Datang Kembali',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Text(
            storage.getUser()?.role ?? '-',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  context.push('/form-leave');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Pengajuan Cuti'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push('/form-sick');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('Pengajuan Izin Sakit'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
