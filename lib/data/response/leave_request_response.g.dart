// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveRequestResponse _$LeaveRequestResponseFromJson(
  Map<String, dynamic> json,
) => _LeaveRequestResponse(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => EmployeeFormResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LeaveRequestResponseToJson(
  _LeaveRequestResponse instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};

_EmployeeFormResponse _$EmployeeFormResponseFromJson(
  Map<String, dynamic> json,
) => _EmployeeFormResponse(
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

Map<String, dynamic> _$EmployeeFormResponseToJson(
  _EmployeeFormResponse instance,
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

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  currentPage: (json['current_page'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'current_page': instance.currentPage,
  'from': instance.from,
  'last_page': instance.lastPage,
  'per_page': instance.perPage,
  'to': instance.to,
  'total': instance.total,
};
