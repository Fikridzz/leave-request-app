import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'user_response.dart';

part 'leave_request_response.freezed.dart';
part 'leave_request_response.g.dart';

@freezed
abstract class LeaveRequestResponse with _$LeaveRequestResponse {
  const factory LeaveRequestResponse({
    List<EmployeeFormResponse>? data,
    Meta? meta,
  }) = _LeaveRequestResponse;

  factory LeaveRequestResponse.fromJson(Map<String, Object?> json) =>
      _$LeaveRequestResponseFromJson(json);
}

@freezed
abstract class EmployeeFormResponse with _$EmployeeFormResponse {
  const factory EmployeeFormResponse({
    required int id,
    String? type,
    @JsonKey(name: 'submission_date') String? submissionDate,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'total_days') int? totalDays,
    String? reason,
    String? status,
    String? autograph,
    UserResponse? user,
  }) = _EmployeeFormResponse;

  factory EmployeeFormResponse.fromJson(Map<String, Object?> json) =>
      _$EmployeeFormResponseFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'current_page') int? currentPage,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    int? total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, Object?> json) => _$MetaFromJson(json);
}
