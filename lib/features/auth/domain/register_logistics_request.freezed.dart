// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_logistics_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterLogisticsRequest {

 String get email; String get password; String get firstName; String get lastName; String get fleetName;
/// Create a copy of RegisterLogisticsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterLogisticsRequestCopyWith<RegisterLogisticsRequest> get copyWith => _$RegisterLogisticsRequestCopyWithImpl<RegisterLogisticsRequest>(this as RegisterLogisticsRequest, _$identity);

  /// Serializes this RegisterLogisticsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterLogisticsRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fleetName, fleetName) || other.fleetName == fleetName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,fleetName);

@override
String toString() {
  return 'RegisterLogisticsRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, fleetName: $fleetName)';
}


}

/// @nodoc
abstract mixin class $RegisterLogisticsRequestCopyWith<$Res>  {
  factory $RegisterLogisticsRequestCopyWith(RegisterLogisticsRequest value, $Res Function(RegisterLogisticsRequest) _then) = _$RegisterLogisticsRequestCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName, String fleetName
});




}
/// @nodoc
class _$RegisterLogisticsRequestCopyWithImpl<$Res>
    implements $RegisterLogisticsRequestCopyWith<$Res> {
  _$RegisterLogisticsRequestCopyWithImpl(this._self, this._then);

  final RegisterLogisticsRequest _self;
  final $Res Function(RegisterLogisticsRequest) _then;

/// Create a copy of RegisterLogisticsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? fleetName = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fleetName: null == fleetName ? _self.fleetName : fleetName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterLogisticsRequest].
extension RegisterLogisticsRequestPatterns on RegisterLogisticsRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterLogisticsRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterLogisticsRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterLogisticsRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegisterLogisticsRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterLogisticsRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterLogisticsRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String fleetName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterLogisticsRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.fleetName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String fleetName)  $default,) {final _that = this;
switch (_that) {
case _RegisterLogisticsRequest():
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.fleetName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String firstName,  String lastName,  String fleetName)?  $default,) {final _that = this;
switch (_that) {
case _RegisterLogisticsRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.fleetName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterLogisticsRequest implements RegisterLogisticsRequest {
  const _RegisterLogisticsRequest({required this.email, required this.password, required this.firstName, required this.lastName, required this.fleetName});
  factory _RegisterLogisticsRequest.fromJson(Map<String, dynamic> json) => _$RegisterLogisticsRequestFromJson(json);

@override final  String email;
@override final  String password;
@override final  String firstName;
@override final  String lastName;
@override final  String fleetName;

/// Create a copy of RegisterLogisticsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterLogisticsRequestCopyWith<_RegisterLogisticsRequest> get copyWith => __$RegisterLogisticsRequestCopyWithImpl<_RegisterLogisticsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterLogisticsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterLogisticsRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fleetName, fleetName) || other.fleetName == fleetName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,fleetName);

@override
String toString() {
  return 'RegisterLogisticsRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, fleetName: $fleetName)';
}


}

/// @nodoc
abstract mixin class _$RegisterLogisticsRequestCopyWith<$Res> implements $RegisterLogisticsRequestCopyWith<$Res> {
  factory _$RegisterLogisticsRequestCopyWith(_RegisterLogisticsRequest value, $Res Function(_RegisterLogisticsRequest) _then) = __$RegisterLogisticsRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String firstName, String lastName, String fleetName
});




}
/// @nodoc
class __$RegisterLogisticsRequestCopyWithImpl<$Res>
    implements _$RegisterLogisticsRequestCopyWith<$Res> {
  __$RegisterLogisticsRequestCopyWithImpl(this._self, this._then);

  final _RegisterLogisticsRequest _self;
  final $Res Function(_RegisterLogisticsRequest) _then;

/// Create a copy of RegisterLogisticsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? fleetName = null,}) {
  return _then(_RegisterLogisticsRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,fleetName: null == fleetName ? _self.fleetName : fleetName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
