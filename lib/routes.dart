import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leave_request_app/constants/app_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:leave_request_app/view/form/view/form_leave_view.dart';
import 'package:leave_request_app/view/form/view/form_sick_view.dart';
import 'package:leave_request_app/view/home/view/home_view.dart';
import 'package:leave_request_app/view/login/view/login_view.dart';
import 'package:leave_request_app/view/register/view/register_view.dart';

class AppRouter {
  static GoRouter router(SharedPreferences prefs) {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return HomeView();
          },
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) {
            return LoginView();
          },
        ),
        GoRoute(
          path: '/register',
          builder: (context, state) {
            return RegisterView();
          },
        ),
        GoRoute(
          path: '/form-leave',
          builder: (context, state) {
            return FormLeaveView();
          },
        ),
        GoRoute(
          path: '/form-sick',
          builder: (context, state) {
            return FormSickView();
          },
        ),
      ],
      redirect: (context, state) {
        final authToken = prefs.getString(AppConstant.tokenKey);

        if (authToken != null && authToken.isNotEmpty && state.fullPath == '/login') {
          return '/';
        }

        if (authToken == null && state.fullPath == '/') {
          return '/login';
        }

        return null;
      },
    );
  }
}
