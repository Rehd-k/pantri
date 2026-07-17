// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_employer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterEmployerRequest {

 String get email; String get password; String get firstName; String get lastName; String get companyName;
/// Create a copy of RegisterEmployerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterEmployerRequestCopyWith<RegisterEmployerRequest> get copyWith => _$RegisterEmployerRequestCopyWithImpl<RegisterEmployerRequest>(this as RegisterEmployerRequest, _$identity);

  /// Serializes this RegisterEmployerRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEmployerRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,companyName);

@override
String toString() {
  return 'RegisterEmployerRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class $RegisterEmployerRequestCopyWith<$Res>  {
  factory $RegisterEmployerRequestCopyWith(RegisterEmployerRequest value, $Res Function(RegisterEmployerRequest) _then) = _$RegisterEmployerRequestCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName, String companyName
});




}
/// @nodoc
class _$RegisterEmployerRequestCopyWithImpl<$Res>
    implements $RegisterEmployerRequestCopyWith<$Res> {
  _$RegisterEmployerRequestCopyWithImpl(this._self, this._then);

  final RegisterEmployerRequest _self;
  final $Res Function(RegisterEmployerRequest) _then;

/// Create a copy of RegisterEmployerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? companyName = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterEmployerRequest].
extension RegisterEmployerRequestPatterns on RegisterEmployerRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterEmployerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterEmployerRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterEmployerRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegisterEmployerRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterEmployerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterEmployerRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String companyName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterEmployerRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.companyName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String companyName)  $default,) {final _that = this;
switch (_that) {
case _RegisterEmployerRequest():
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.companyName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String firstName,  String lastName,  String companyName)?  $default,) {final _that = this;
switch (_that) {
case _RegisterEmployerRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.companyName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterEmployerRequest implements RegisterEmployerRequest {
  const _RegisterEmployerRequest({required this.email, required this.password, required this.firstName, required this.lastName, required this.companyName});
  factory _RegisterEmployerRequest.fromJson(Map<String, dynamic> json) => _$RegisterEmployerRequestFromJson(json);

@override final  String email;
@override final  String password;
@override final  String firstName;
@override final  String lastName;
@override final  String companyName;

/// Create a copy of RegisterEmployerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterEmployerRequestCopyWith<_RegisterEmployerRequest> get copyWith => __$RegisterEmployerRequestCopyWithImpl<_RegisterEmployerRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterEmployerRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterEmployerRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,companyName);

@override
String toString() {
  return 'RegisterEmployerRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class _$RegisterEmployerRequestCopyWith<$Res> implements $RegisterEmployerRequestCopyWith<$Res> {
  factory _$RegisterEmployerRequestCopyWith(_RegisterEmployerRequest value, $Res Function(_RegisterEmployerRequest) _then) = __$RegisterEmployerRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String firstName, String lastName, String companyName
});




}
/// @nodoc
class __$RegisterEmployerRequestCopyWithImpl<$Res>
    implements _$RegisterEmployerRequestCopyWith<$Res> {
  __$RegisterEmployerRequestCopyWithImpl(this._self, this._then);

  final _RegisterEmployerRequest _self;
  final $Res Function(_RegisterEmployerRequest) _then;

/// Create a copy of RegisterEmployerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? companyName = null,}) {
  return _then(_RegisterEmployerRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
