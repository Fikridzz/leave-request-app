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

 List<EmployeeFormResponse>? get data; Meta? get meta;
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
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('meta', meta));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRequestResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaveRequestResponse(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $LeaveRequestResponseCopyWith<$Res>  {
  factory $LeaveRequestResponseCopyWith(LeaveRequestResponse value, $Res Function(LeaveRequestResponse) _then) = _$LeaveRequestResponseCopyWithImpl;
@useResult
$Res call({
 List<EmployeeFormResponse>? data, Meta? meta
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$LeaveRequestResponseCopyWithImpl<$Res>
    implements $LeaveRequestResponseCopyWith<$Res> {
  _$LeaveRequestResponseCopyWithImpl(this._self, this._then);

  final LeaveRequestResponse _self;
  final $Res Function(LeaveRequestResponse) _then;

/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EmployeeFormResponse>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EmployeeFormResponse>? data,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRequestResponse() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EmployeeFormResponse>? data,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestResponse():
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EmployeeFormResponse>? data,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestResponse() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveRequestResponse with DiagnosticableTreeMixin implements LeaveRequestResponse {
  const _LeaveRequestResponse({final  List<EmployeeFormResponse>? data, this.meta}): _data = data;
  factory _LeaveRequestResponse.fromJson(Map<String, dynamic> json) => _$LeaveRequestResponseFromJson(json);

 final  List<EmployeeFormResponse>? _data;
@override List<EmployeeFormResponse>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;

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
    ..add(DiagnosticsProperty('data', data))..add(DiagnosticsProperty('meta', meta));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRequestResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaveRequestResponse(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$LeaveRequestResponseCopyWith<$Res> implements $LeaveRequestResponseCopyWith<$Res> {
  factory _$LeaveRequestResponseCopyWith(_LeaveRequestResponse value, $Res Function(_LeaveRequestResponse) _then) = __$LeaveRequestResponseCopyWithImpl;
@override @useResult
$Res call({
 List<EmployeeFormResponse>? data, Meta? meta
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$LeaveRequestResponseCopyWithImpl<$Res>
    implements _$LeaveRequestResponseCopyWith<$Res> {
  __$LeaveRequestResponseCopyWithImpl(this._self, this._then);

  final _LeaveRequestResponse _self;
  final $Res Function(_LeaveRequestResponse) _then;

/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_LeaveRequestResponse(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EmployeeFormResponse>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of LeaveRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$EmployeeFormResponse implements DiagnosticableTreeMixin {

 int get id; String? get type;@JsonKey(name: 'submission_date') String? get submissionDate;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'total_days') int? get totalDays; String? get reason; String? get status; String? get autograph; UserResponse? get user;
/// Create a copy of EmployeeFormResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeFormResponseCopyWith<EmployeeFormResponse> get copyWith => _$EmployeeFormResponseCopyWithImpl<EmployeeFormResponse>(this as EmployeeFormResponse, _$identity);

  /// Serializes this EmployeeFormResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeFormResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('submissionDate', submissionDate))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('totalDays', totalDays))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('autograph', autograph))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeFormResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.autograph, autograph) || other.autograph == autograph)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,submissionDate,startDate,totalDays,reason,status,autograph,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeFormResponse(id: $id, type: $type, submissionDate: $submissionDate, startDate: $startDate, totalDays: $totalDays, reason: $reason, status: $status, autograph: $autograph, user: $user)';
}


}

/// @nodoc
abstract mixin class $EmployeeFormResponseCopyWith<$Res>  {
  factory $EmployeeFormResponseCopyWith(EmployeeFormResponse value, $Res Function(EmployeeFormResponse) _then) = _$EmployeeFormResponseCopyWithImpl;
@useResult
$Res call({
 int id, String? type,@JsonKey(name: 'submission_date') String? submissionDate,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'total_days') int? totalDays, String? reason, String? status, String? autograph, UserResponse? user
});


$UserResponseCopyWith<$Res>? get user;

}
/// @nodoc
class _$EmployeeFormResponseCopyWithImpl<$Res>
    implements $EmployeeFormResponseCopyWith<$Res> {
  _$EmployeeFormResponseCopyWithImpl(this._self, this._then);

  final EmployeeFormResponse _self;
  final $Res Function(EmployeeFormResponse) _then;

/// Create a copy of EmployeeFormResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = freezed,Object? submissionDate = freezed,Object? startDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? autograph = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,autograph: freezed == autograph ? _self.autograph : autograph // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse?,
  ));
}
/// Create a copy of EmployeeFormResponse
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


/// Adds pattern-matching-related methods to [EmployeeFormResponse].
extension EmployeeFormResponsePatterns on EmployeeFormResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeFormResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeFormResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeFormResponse value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeFormResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeFormResponse value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeFormResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? type, @JsonKey(name: 'submission_date')  String? submissionDate, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'total_days')  int? totalDays,  String? reason,  String? status,  String? autograph,  UserResponse? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeFormResponse() when $default != null:
return $default(_that.id,_that.type,_that.submissionDate,_that.startDate,_that.totalDays,_that.reason,_that.status,_that.autograph,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? type, @JsonKey(name: 'submission_date')  String? submissionDate, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'total_days')  int? totalDays,  String? reason,  String? status,  String? autograph,  UserResponse? user)  $default,) {final _that = this;
switch (_that) {
case _EmployeeFormResponse():
return $default(_that.id,_that.type,_that.submissionDate,_that.startDate,_that.totalDays,_that.reason,_that.status,_that.autograph,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? type, @JsonKey(name: 'submission_date')  String? submissionDate, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'total_days')  int? totalDays,  String? reason,  String? status,  String? autograph,  UserResponse? user)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeFormResponse() when $default != null:
return $default(_that.id,_that.type,_that.submissionDate,_that.startDate,_that.totalDays,_that.reason,_that.status,_that.autograph,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeFormResponse with DiagnosticableTreeMixin implements EmployeeFormResponse {
  const _EmployeeFormResponse({required this.id, this.type, @JsonKey(name: 'submission_date') this.submissionDate, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'total_days') this.totalDays, this.reason, this.status, this.autograph, this.user});
  factory _EmployeeFormResponse.fromJson(Map<String, dynamic> json) => _$EmployeeFormResponseFromJson(json);

@override final  int id;
@override final  String? type;
@override@JsonKey(name: 'submission_date') final  String? submissionDate;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'total_days') final  int? totalDays;
@override final  String? reason;
@override final  String? status;
@override final  String? autograph;
@override final  UserResponse? user;

/// Create a copy of EmployeeFormResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeFormResponseCopyWith<_EmployeeFormResponse> get copyWith => __$EmployeeFormResponseCopyWithImpl<_EmployeeFormResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeFormResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EmployeeFormResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('submissionDate', submissionDate))..add(DiagnosticsProperty('startDate', startDate))..add(DiagnosticsProperty('totalDays', totalDays))..add(DiagnosticsProperty('reason', reason))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('autograph', autograph))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeFormResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.autograph, autograph) || other.autograph == autograph)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,submissionDate,startDate,totalDays,reason,status,autograph,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EmployeeFormResponse(id: $id, type: $type, submissionDate: $submissionDate, startDate: $startDate, totalDays: $totalDays, reason: $reason, status: $status, autograph: $autograph, user: $user)';
}


}

/// @nodoc
abstract mixin class _$EmployeeFormResponseCopyWith<$Res> implements $EmployeeFormResponseCopyWith<$Res> {
  factory _$EmployeeFormResponseCopyWith(_EmployeeFormResponse value, $Res Function(_EmployeeFormResponse) _then) = __$EmployeeFormResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String? type,@JsonKey(name: 'submission_date') String? submissionDate,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'total_days') int? totalDays, String? reason, String? status, String? autograph, UserResponse? user
});


@override $UserResponseCopyWith<$Res>? get user;

}
/// @nodoc
class __$EmployeeFormResponseCopyWithImpl<$Res>
    implements _$EmployeeFormResponseCopyWith<$Res> {
  __$EmployeeFormResponseCopyWithImpl(this._self, this._then);

  final _EmployeeFormResponse _self;
  final $Res Function(_EmployeeFormResponse) _then;

/// Create a copy of EmployeeFormResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = freezed,Object? submissionDate = freezed,Object? startDate = freezed,Object? totalDays = freezed,Object? reason = freezed,Object? status = freezed,Object? autograph = freezed,Object? user = freezed,}) {
  return _then(_EmployeeFormResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,totalDays: freezed == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,autograph: freezed == autograph ? _self.autograph : autograph // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse?,
  ));
}

/// Create a copy of EmployeeFormResponse
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


/// @nodoc
mixin _$Meta implements DiagnosticableTreeMixin {

@JsonKey(name: 'current_page') int? get currentPage; int? get from;@JsonKey(name: 'last_page') int? get lastPage;@JsonKey(name: 'per_page') int? get perPage; int? get to; int? get total;
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaCopyWith<Meta> get copyWith => _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Meta'))
    ..add(DiagnosticsProperty('currentPage', currentPage))..add(DiagnosticsProperty('from', from))..add(DiagnosticsProperty('lastPage', lastPage))..add(DiagnosticsProperty('perPage', perPage))..add(DiagnosticsProperty('to', to))..add(DiagnosticsProperty('total', total));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,perPage,to,total);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Meta(currentPage: $currentPage, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res>  {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) = _$MetaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage, int? to, int? total
});




}
/// @nodoc
class _$MetaCopyWithImpl<$Res>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? from = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Meta].
extension MetaPatterns on Meta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meta value)  $default,){
final _that = this;
switch (_that) {
case _Meta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meta value)?  $default,){
final _that = this;
switch (_that) {
case _Meta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? to,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? to,  int? total)  $default,) {final _that = this;
switch (_that) {
case _Meta():
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage,  int? from, @JsonKey(name: 'last_page')  int? lastPage, @JsonKey(name: 'per_page')  int? perPage,  int? to,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _Meta() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.perPage,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meta with DiagnosticableTreeMixin implements Meta {
  const _Meta({@JsonKey(name: 'current_page') this.currentPage, this.from, @JsonKey(name: 'last_page') this.lastPage, @JsonKey(name: 'per_page') this.perPage, this.to, this.total});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override final  int? from;
@override@JsonKey(name: 'last_page') final  int? lastPage;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override final  int? to;
@override final  int? total;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaCopyWith<_Meta> get copyWith => __$MetaCopyWithImpl<_Meta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Meta'))
    ..add(DiagnosticsProperty('currentPage', currentPage))..add(DiagnosticsProperty('from', from))..add(DiagnosticsProperty('lastPage', lastPage))..add(DiagnosticsProperty('perPage', perPage))..add(DiagnosticsProperty('to', to))..add(DiagnosticsProperty('total', total));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,perPage,to,total);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Meta(currentPage: $currentPage, from: $from, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) = __$MetaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage, int? from,@JsonKey(name: 'last_page') int? lastPage,@JsonKey(name: 'per_page') int? perPage, int? to, int? total
});




}
/// @nodoc
class __$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? from = freezed,Object? lastPage = freezed,Object? perPage = freezed,Object? to = freezed,Object? total = freezed,}) {
  return _then(_Meta(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
