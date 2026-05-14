import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    String? name,
    String? email,
    String? department,
    @JsonKey(name: 'auth_token') String? authToken,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, Object?> json) =>
      _$UserResponseFromJson(json);
}
