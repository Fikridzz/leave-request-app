import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:leave_request_app/helper/shared_preferences_provider.dart';
import 'package:leave_request_app/routes.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await initializeDateFormatting('id', null);

  runApp(MainApp(prefs));
}

class MainApp extends HookConsumerWidget {
  final SharedPreferences prefs;
  const MainApp(this.prefs, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [sharedPrefsProvider.overrideWithValue(prefs)],
      child: MaterialApp.router(
        title: 'Movie DB',
        theme: ThemeData(
          // brightness: Brightness.light
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router(prefs),
      ),
    );
  }
}
