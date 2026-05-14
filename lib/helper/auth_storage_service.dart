import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/constants/app_constant.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/helper/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_storage_service.g.dart';

@riverpod
AuthStorageService authStorageService(Ref ref) {
  final prefs = ref.watch(sharedPrefsProvider);
  return AuthStorageService(prefs);
}

class AuthStorageService {
  final SharedPreferences _prefs;
  AuthStorageService(this._prefs);

  void saveToken(String token) => _prefs.setString(AppConstant.tokenKey, token);
  String? getToken() => _prefs.getString(AppConstant.tokenKey);

  void saveUser(Map<String, dynamic> userMap) {
    _prefs.setString(AppConstant.userKey, jsonEncode(userMap));
  }

  User? getUser() {
    final data = _prefs.getString(AppConstant.userKey);
    return data != null ? User.fromMap(jsonDecode(data)) : null;
  }

  void clearAll() => _prefs.clear();
}