import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/view/home/controller/home_controller.dart';

class ProfileView extends HookConsumerWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = useState<User?>(null);
    final token = useState<String>('-');
    final prefs = useState<SharedPreferences?>(null);
    final storage = ref.read(authStorageServiceProvider);

    ref.listen(profileControllerProvider, (previous, next) {
      context.pushReplacement('/login');
    });

    // useEffect(() {
    //   Future<void> getUser() async {
    //     final sharedPrefs = await SharedPreferences.getInstance();
    //     final data = sharedPrefs.getString('user_data');

    //     userData.value = User.fromMap(jsonDecode(data ?? ''));
    //     prefs.value = sharedPrefs;
    //   }

    //   getUser();

    //   return null;
    // }, []);

    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(120),
              color: Colors.grey,
            ),
            child: Icon(Icons.person, size: 72),
          ),
          SizedBox(height: 24),
          Text('Name: ${storage.getUser()?.name}'),
          SizedBox(height: 8),
          Text('Email: ${storage.getUser()?.email}'),
          SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              ref.read(profileControllerProvider.notifier).logout();
            },
            child: Text('Logout', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
