// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthUser {

 String get id; String get email; String get firstName; String get lastName;@JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson) UserRole get role;@JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson) UserStatus get status; String? get employerId; String? get employerName; String? get employerInviteCode;/// @deprecated Use [employerId].
 String? get companyId;/// @deprecated Use [employerName].
 String? get companyName;/// @deprecated Use [employerInviteCode].
 String? get companyInviteCode; String? get businessName; String? get fleetName;
/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserCopyWith<AuthUser> get copyWith => _$AuthUserCopyWithImpl<AuthUser>(this as AuthUser, _$identity);

  /// Serializes this AuthUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.employerId, employerId) || other.employerId == employerId)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.employerInviteCode, employerInviteCode) || other.employerInviteCode == employerInviteCode)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyInviteCode, companyInviteCode) || other.companyInviteCode == companyInviteCode)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.fleetName, fleetName) || other.fleetName == fleetName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,firstName,lastName,role,status,employerId,employerName,employerInviteCode,companyId,companyName,companyInviteCode,businessName,fleetName);

@override
String toString() {
  return 'AuthUser(id: $id, email: $email, firstName: $firstName, lastName: $lastName, role: $role, status: $status, employerId: $employerId, employerName: $employerName, employerInviteCode: $employerInviteCode, companyId: $companyId, companyName: $companyName, companyInviteCode: $companyInviteCode, businessName: $businessName, fleetName: $fleetName)';
}


}

/// @nodoc
abstract mixin class $AuthUserCopyWith<$Res>  {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) _then) = _$AuthUserCopyWithImpl;
@useResult
$Res call({
 String id, String email, String firstName, String lastName,@JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson) UserRole role,@JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson) UserStatus status, String? employerId, String? employerName, String? employerInviteCode, String? companyId, String? companyName, String? companyInviteCode, String? businessName, String? fleetName
});




}
/// @nodoc
class _$AuthUserCopyWithImpl<$Res>
    implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._self, this._then);

  final AuthUser _self;
  final $Res Function(AuthUser) _then;

/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? role = null,Object? status = null,Object? employerId = freezed,Object? employerName = freezed,Object? employerInviteCode = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? companyInviteCode = freezed,Object? businessName = freezed,Object? fleetName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,employerId: freezed == employerId ? _self.employerId : employerId // ignore: cast_nullable_to_non_nullable
as String?,employerName: freezed == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String?,employerInviteCode: freezed == employerInviteCode ? _self.employerInviteCode : employerInviteCode // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,companyInviteCode: freezed == companyInviteCode ? _self.companyInviteCode : companyInviteCode // ignore: cast_nullable_to_non_nullable
as String?,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,fleetName: freezed == fleetName ? _self.fleetName : fleetName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthUser].
extension AuthUserPatterns on AuthUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthUser value)  $default,){
final _that = this;
switch (_that) {
case _AuthUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthUser value)?  $default,){
final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName, @JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson)  UserRole role, @JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson)  UserStatus status,  String? employerId,  String? employerName,  String? employerInviteCode,  String? companyId,  String? companyName,  String? companyInviteCode,  String? businessName,  String? fleetName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.role,_that.status,_that.employerId,_that.employerName,_that.employerInviteCode,_that.companyId,_that.companyName,_that.companyInviteCode,_that.businessName,_that.fleetName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName, @JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson)  UserRole role, @JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson)  UserStatus status,  String? employerId,  String? employerName,  String? employerInviteCode,  String? companyId,  String? companyName,  String? companyInviteCode,  String? businessName,  String? fleetName)  $default,) {final _that = this;
switch (_that) {
case _AuthUser():
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.role,_that.status,_that.employerId,_that.employerName,_that.employerInviteCode,_that.companyId,_that.companyName,_that.companyInviteCode,_that.businessName,_that.fleetName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String firstName,  String lastName, @JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson)  UserRole role, @JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson)  UserStatus status,  String? employerId,  String? employerName,  String? employerInviteCode,  String? companyId,  String? companyName,  String? companyInviteCode,  String? businessName,  String? fleetName)?  $default,) {final _that = this;
switch (_that) {
case _AuthUser() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.role,_that.status,_that.employerId,_that.employerName,_that.employerInviteCode,_that.companyId,_that.companyName,_that.companyInviteCode,_that.businessName,_that.fleetName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthUser implements AuthUser {
  const _AuthUser({required this.id, required this.email, required this.firstName, required this.lastName, @JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson) required this.role, @JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson) required this.status, this.employerId, this.employerName, this.employerInviteCode, this.companyId, this.companyName, this.companyInviteCode, this.businessName, this.fleetName});
  factory _AuthUser.fromJson(Map<String, dynamic> json) => _$AuthUserFromJson(json);

@override final  String id;
@override final  String email;
@override final  String firstName;
@override final  String lastName;
@override@JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson) final  UserRole role;
@override@JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson) final  UserStatus status;
@override final  String? employerId;
@override final  String? employerName;
@override final  String? employerInviteCode;
/// @deprecated Use [employerId].
@override final  String? companyId;
/// @deprecated Use [employerName].
@override final  String? companyName;
/// @deprecated Use [employerInviteCode].
@override final  String? companyInviteCode;
@override final  String? businessName;
@override final  String? fleetName;

/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserCopyWith<_AuthUser> get copyWith => __$AuthUserCopyWithImpl<_AuthUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.employerId, employerId) || other.employerId == employerId)&&(identical(other.employerName, employerName) || other.employerName == employerName)&&(identical(other.employerInviteCode, employerInviteCode) || other.employerInviteCode == employerInviteCode)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyInviteCode, companyInviteCode) || other.companyInviteCode == companyInviteCode)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.fleetName, fleetName) || other.fleetName == fleetName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,firstName,lastName,role,status,employerId,employerName,employerInviteCode,companyId,companyName,companyInviteCode,businessName,fleetName);

@override
String toString() {
  return 'AuthUser(id: $id, email: $email, firstName: $firstName, lastName: $lastName, role: $role, status: $status, employerId: $employerId, employerName: $employerName, employerInviteCode: $employerInviteCode, companyId: $companyId, companyName: $companyName, companyInviteCode: $companyInviteCode, businessName: $businessName, fleetName: $fleetName)';
}


}

/// @nodoc
abstract mixin class _$AuthUserCopyWith<$Res> implements $AuthUserCopyWith<$Res> {
  factory _$AuthUserCopyWith(_AuthUser value, $Res Function(_AuthUser) _then) = __$AuthUserCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String firstName, String lastName,@JsonKey(fromJson: UserRole.fromApi, toJson: _roleToJson) UserRole role,@JsonKey(fromJson: UserStatus.fromApi, toJson: _statusToJson) UserStatus status, String? employerId, String? employerName, String? employerInviteCode, String? companyId, String? companyName, String? companyInviteCode, String? businessName, String? fleetName
});




}
/// @nodoc
class __$AuthUserCopyWithImpl<$Res>
    implements _$AuthUserCopyWith<$Res> {
  __$AuthUserCopyWithImpl(this._self, this._then);

  final _AuthUser _self;
  final $Res Function(_AuthUser) _then;

/// Create a copy of AuthUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? role = null,Object? status = null,Object? employerId = freezed,Object? employerName = freezed,Object? employerInviteCode = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? companyInviteCode = freezed,Object? businessName = freezed,Object? fleetName = freezed,}) {
  return _then(_AuthUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatus,employerId: freezed == employerId ? _self.employerId : employerId // ignore: cast_nullable_to_non_nullable
as String?,employerName: freezed == employerName ? _self.employerName : employerName // ignore: cast_nullable_to_non_nullable
as String?,employerInviteCode: freezed == employerInviteCode ? _self.employerInviteCode : employerInviteCode // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,companyInviteCode: freezed == companyInviteCode ? _self.companyInviteCode : companyInviteCode // ignore: cast_nullable_to_non_nullable
as String?,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,fleetName: freezed == fleetName ? _self.fleetName : fleetName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
