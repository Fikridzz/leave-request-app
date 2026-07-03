import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/constants/app_constant.dart';
import 'package:leave_request_app/data/response/user_response.dart';
import 'package:leave_request_app/domain/model/data_user.dart';
import 'package:leave_request_app/helper/api_exception.dart';
import 'package:leave_request_app/helper/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/domain/repository/user_repository.dart';
import 'package:leave_request_app/helper/db_helper.dart';

part 'user_repository_impl.g.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this.client);
  final Dio client;

  @override
  Future<UserResponse?> insertUser(DataUser data) async {
    try {
      final response = await client.post(
        AppConstant.registerEndpoint,
        data: data.toMap(),
      );

      return UserResponse.fromJsonLogin(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }

  @override
  Future<UserResponse?> login(String email, String password) async {
    try {
      final response = await client.post(
        AppConstant.loginEndpoint,
        data: {'email': email, 'password': password},
      );

      return UserResponse.fromJsonLogin(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }

  @override
  Future<void> logout() async {
    try {
      final response = await client.post(AppConstant.logoutEndpoint);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server error
        final serverMessage =
            e.response?.data['message'] ?? 'Server error occurred';
        throw ApiException(serverMessage);
      } else {
        // Handel no response from server
        throw ApiException('Network error. Please check your connection.');
      }
    } catch (e) {
      // Handel unexpected error
      throw ApiException('An unexpected error occurred.');
    }
  }
}

@riverpod
UserRepository userRepository(Ref ref) {
  final client = ref.read(dioProvider);
  return UserRepositoryImpl(client);
}
