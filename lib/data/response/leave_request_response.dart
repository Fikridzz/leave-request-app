import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'user_response.dart';

part 'leave_request_response.freezed.dart';
part 'leave_request_response.g.dart';

@freezed
abstract class LeaveRequestResponse with _$LeaveRequestResponse {
  const factory LeaveRequestResponse({
    required int id,
    String? type,
    @JsonKey(name: 'submission_date') String? submissionDate,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'total_days') int? totalDays,
    String? reason,
    String? status,
    UserResponse? user,
  }) = _LeaveRequestResponse;

  factory LeaveRequestResponse.fromJson(Map<String, Object?> json) =>
      _$LeaveRequestResponseFromJson(json);
}
