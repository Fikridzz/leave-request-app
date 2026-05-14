// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveRequestResponse _$LeaveRequestResponseFromJson(
  Map<String, dynamic> json,
) => _LeaveRequestResponse(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String?,
  submissionDate: json['submission_date'] as String?,
  startDate: json['start_date'] as String?,
  totalDays: (json['total_days'] as num?)?.toInt(),
  reason: json['reason'] as String?,
  status: json['status'] as String?,
  user: json['user'] == null
      ? null
      : UserResponse.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LeaveRequestResponseToJson(
  _LeaveRequestResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'submission_date': instance.submissionDate,
  'start_date': instance.startDate,
  'total_days': instance.totalDays,
  'reason': instance.reason,
  'status': instance.status,
  'user': instance.user,
};
