// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      department: json['department'] as String?,
      authToken: json['auth_token'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'department': instance.department,
      'auth_token': instance.authToken,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
