import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
@JsonSerializable()
abstract class UserResponse with _$UserResponse {
  const UserResponse._();

  const factory UserResponse({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? department,
    String? accessToken,
    String? createdAt,
    String? role,
  }) = _UserResponse;

  factory UserResponse.fromJsonLogin(Map<String, dynamic> json) {
    return _UserResponse(
      id: json['user']['id'],
      name: json['user']['name'],
      phone: json['user']['phone'],
      email: json['user']['email'],
      department: json['user']['department'],
      accessToken: json['access_token'],
      createdAt: json['user']['created_at'],
      role: json['user']['role'],
    );
  }

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return _UserResponse(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      department: json['department'],
      createdAt: json['created_at'],
      role: json['role'],
    );
  }
}
