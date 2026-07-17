// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_employee_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterEmployeeRequest {

 String get email; String get password; String get firstName; String get lastName; String get inviteCode;
/// Create a copy of RegisterEmployeeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterEmployeeRequestCopyWith<RegisterEmployeeRequest> get copyWith => _$RegisterEmployeeRequestCopyWithImpl<RegisterEmployeeRequest>(this as RegisterEmployeeRequest, _$identity);

  /// Serializes this RegisterEmployeeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEmployeeRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,inviteCode);

@override
String toString() {
  return 'RegisterEmployeeRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, inviteCode: $inviteCode)';
}


}

/// @nodoc
abstract mixin class $RegisterEmployeeRequestCopyWith<$Res>  {
  factory $RegisterEmployeeRequestCopyWith(RegisterEmployeeRequest value, $Res Function(RegisterEmployeeRequest) _then) = _$RegisterEmployeeRequestCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName, String inviteCode
});




}
/// @nodoc
class _$RegisterEmployeeRequestCopyWithImpl<$Res>
    implements $RegisterEmployeeRequestCopyWith<$Res> {
  _$RegisterEmployeeRequestCopyWithImpl(this._self, this._then);

  final RegisterEmployeeRequest _self;
  final $Res Function(RegisterEmployeeRequest) _then;

/// Create a copy of RegisterEmployeeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? inviteCode = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterEmployeeRequest].
extension RegisterEmployeeRequestPatterns on RegisterEmployeeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterEmployeeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterEmployeeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterEmployeeRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegisterEmployeeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterEmployeeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterEmployeeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String inviteCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterEmployeeRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.inviteCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String inviteCode)  $default,) {final _that = this;
switch (_that) {
case _RegisterEmployeeRequest():
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.inviteCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String firstName,  String lastName,  String inviteCode)?  $default,) {final _that = this;
switch (_that) {
case _RegisterEmployeeRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.inviteCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterEmployeeRequest implements RegisterEmployeeRequest {
  const _RegisterEmployeeRequest({required this.email, required this.password, required this.firstName, required this.lastName, required this.inviteCode});
  factory _RegisterEmployeeRequest.fromJson(Map<String, dynamic> json) => _$RegisterEmployeeRequestFromJson(json);

@override final  String email;
@override final  String password;
@override final  String firstName;
@override final  String lastName;
@override final  String inviteCode;

/// Create a copy of RegisterEmployeeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterEmployeeRequestCopyWith<_RegisterEmployeeRequest> get copyWith => __$RegisterEmployeeRequestCopyWithImpl<_RegisterEmployeeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterEmployeeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterEmployeeRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,inviteCode);

@override
String toString() {
  return 'RegisterEmployeeRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, inviteCode: $inviteCode)';
}


}

/// @nodoc
abstract mixin class _$RegisterEmployeeRequestCopyWith<$Res> implements $RegisterEmployeeRequestCopyWith<$Res> {
  factory _$RegisterEmployeeRequestCopyWith(_RegisterEmployeeRequest value, $Res Function(_RegisterEmployeeRequest) _then) = __$RegisterEmployeeRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String firstName, String lastName, String inviteCode
});




}
/// @nodoc
class __$RegisterEmployeeRequestCopyWithImpl<$Res>
    implements _$RegisterEmployeeRequestCopyWith<$Res> {
  __$RegisterEmployeeRequestCopyWithImpl(this._self, this._then);

  final _RegisterEmployeeRequest _self;
  final $Res Function(_RegisterEmployeeRequest) _then;

/// Create a copy of RegisterEmployeeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? inviteCode = null,}) {
  return _then(_RegisterEmployeeRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
