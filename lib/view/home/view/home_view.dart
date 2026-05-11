import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/view/home/view/form_view.dart';
import 'package:leave_request_app/view/home/view/profile_view.dart';
import 'package:leave_request_app/view/home/view/submission_view.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavIndex = useState<int>(0);
    List<Widget> homeView = [FormView(), SubmissionView(), ProfileView()];

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: bottomNavIndex.value,
          onDestinationSelected: (value) {
            if (bottomNavIndex.value != value) {
              bottomNavIndex.value = value;
            }
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.list), label: 'Pengajuan'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        body: homeView.elementAt(bottomNavIndex.value),
      ),
    );
  }
}
