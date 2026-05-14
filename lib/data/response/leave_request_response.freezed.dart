// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveRequestResponse implements DiagnosticableTreeMixin {

 int get id; String? get type;@JsonKey(name: 'submission_date') String? get submissionDate;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'total_days') int? get totalDays; String? get reason; String? get status; UserResponse? get user;
/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveRequestResponseCopyWith<LeaveRequestResponse> get copyWith => _$LeaveRequestResponseCopyWithImpl<LeaveRequestResponse>(this as LeaveRequestResponse, _$identity);

  /// Serializes this LeaveRequestResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaveRequestResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('submissionDate', submissionDate))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('totalDays', totalDays))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRequestResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,submissionDate,startDate,totalDays,reason,status,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaveRequestResponse(id: $id, type: $type, submissionDate: $submissionDate, startDate: $startDate, totalDays: $totalDays, reason: $reason, status: $status, user: $user)';
}


}

/// @nodoc
abstract mixin class $LeaveRequestResponseCopyWith<$Res>  {
  factory $LeaveRequestResponseCopyWith(LeaveRequestResponse value, $Res Function(LeaveRequestResponse) _then) = _$LeaveRequestResponseCopyWithImpl;
@useResult
$Res call({
 int id, String? type,@JsonKey(name: 'submission_date') String? submissionDate,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'total_days') int? totalDays, String? reason, String? status, UserResponse? user
});


$UserResponseCopyWith<$Res>? get user;

}
/// @nodoc
class _$LeaveRequestResponseCopyWithImpl<$Res>
    implements $LeaveRequestResponseCopyWith<$Res> {
  _$LeaveRequestResponseCopyWithImpl(this._self, this._then);

  final LeaveRequestResponse _self;
  final $Res Function(LeaveRequestResponse) _then;

/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = freezed,Object? submissionDate = freezed,Object? startDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse?,
  ));
}
/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserResponseCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaveRequestResponse].
extension LeaveRequestResponsePatterns on LeaveRequestResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveRequestResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveRequestResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveRequestResponse value)  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveRequestResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? type, @JsonKey(name: 'submission_date')  String? submissionDate, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'total_days')  int? totalDays,  String? reason,  String? status,  UserResponse? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRequestResponse() when $default != null:
return $default(_that.id,_that.type,_that.submissionDate,_that.startDate,_that.totalDays,_that.reason,_that.status,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? type, @JsonKey(name: 'submission_date')  String? submissionDate, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'total_days')  int? totalDays,  String? reason,  String? status,  UserResponse? user)  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestResponse():
return $default(_that.id,_that.type,_that.submissionDate,_that.startDate,_that.totalDays,_that.reason,_that.status,_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? type, @JsonKey(name: 'submission_date')  String? submissionDate, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'total_days')  int? totalDays,  String? reason,  String? status,  UserResponse? user)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestResponse() when $default != null:
return $default(_that.id,_that.type,_that.submissionDate,_that.startDate,_that.totalDays,_that.reason,_that.status,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveRequestResponse with DiagnosticableTreeMixin implements LeaveRequestResponse {
  const _LeaveRequestResponse({required this.id, this.type, @JsonKey(name: 'submission_date') this.submissionDate, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'total_days') this.totalDays, this.reason, this.status, this.user});
  factory _LeaveRequestResponse.fromJson(Map<String, dynamic> json) => _$LeaveRequestResponseFromJson(json);

@override final  int id;
@override final  String? type;
@override@JsonKey(name: 'submission_date') final  String? submissionDate;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'total_days') final  int? totalDays;
@override final  String? reason;
@override final  String? status;
@override final  UserResponse? user;

/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveRequestResponseCopyWith<_LeaveRequestResponse> get copyWith => __$LeaveRequestResponseCopyWithImpl<_LeaveRequestResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveRequestResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaveRequestResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('submissionDate', submissionDate))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('totalDays', totalDays))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRequestResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,submissionDate,startDate,totalDays,reason,status,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaveRequestResponse(id: $id, type: $type, submissionDate: $submissionDate, startDate: $startDate, totalDays: $totalDays, reason: $reason, status: $status, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LeaveRequestResponseCopyWith<$Res> implements $LeaveRequestResponseCopyWith<$Res> {
  factory _$LeaveRequestResponseCopyWith(_LeaveRequestResponse value, $Res Function(_LeaveRequestResponse) _then) = __$LeaveRequestResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String? type,@JsonKey(name: 'submission_date') String? submissionDate,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'total_days') int? totalDays, String? reason, String? status, UserResponse? user
});


@override $UserResponseCopyWith<$Res>? get user;

}
/// @nodoc
class __$LeaveRequestResponseCopyWithImpl<$Res>
    implements _$LeaveRequestResponseCopyWith<$Res> {
  __$LeaveRequestResponseCopyWithImpl(this._self, this._then);

  final _LeaveRequestResponse _self;
  final $Res Function(_LeaveRequestResponse) _then;

/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = freezed,Object? submissionDate = freezed,Object? startDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? user = freezed,}) {
  return _then(_LeaveRequestResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse?,
  ));
}

/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserResponseCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
