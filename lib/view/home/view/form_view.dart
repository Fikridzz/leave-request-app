import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FormView extends HookConsumerWidget {
  const FormView({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.expand(
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
    );
  }
}
