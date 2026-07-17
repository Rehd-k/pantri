// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_supplier_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterSupplierRequest {

 String get email; String get password; String get firstName; String get lastName; String get businessName;
/// Create a copy of RegisterSupplierRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterSupplierRequestCopyWith<RegisterSupplierRequest> get copyWith => _$RegisterSupplierRequestCopyWithImpl<RegisterSupplierRequest>(this as RegisterSupplierRequest, _$identity);

  /// Serializes this RegisterSupplierRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSupplierRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.businessName, businessName) || other.businessName == businessName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,businessName);

@override
String toString() {
  return 'RegisterSupplierRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, businessName: $businessName)';
}


}

/// @nodoc
abstract mixin class $RegisterSupplierRequestCopyWith<$Res>  {
  factory $RegisterSupplierRequestCopyWith(RegisterSupplierRequest value, $Res Function(RegisterSupplierRequest) _then) = _$RegisterSupplierRequestCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName, String businessName
});




}
/// @nodoc
class _$RegisterSupplierRequestCopyWithImpl<$Res>
    implements $RegisterSupplierRequestCopyWith<$Res> {
  _$RegisterSupplierRequestCopyWithImpl(this._self, this._then);

  final RegisterSupplierRequest _self;
  final $Res Function(RegisterSupplierRequest) _then;

/// Create a copy of RegisterSupplierRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? businessName = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterSupplierRequest].
extension RegisterSupplierRequestPatterns on RegisterSupplierRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterSupplierRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterSupplierRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterSupplierRequest value)  $default,){
final _that = this;
switch (_that) {
case _RegisterSupplierRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterSupplierRequest value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterSupplierRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String businessName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterSupplierRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.businessName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String businessName)  $default,) {final _that = this;
switch (_that) {
case _RegisterSupplierRequest():
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.businessName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String firstName,  String lastName,  String businessName)?  $default,) {final _that = this;
switch (_that) {
case _RegisterSupplierRequest() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.businessName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterSupplierRequest implements RegisterSupplierRequest {
  const _RegisterSupplierRequest({required this.email, required this.password, required this.firstName, required this.lastName, required this.businessName});
  factory _RegisterSupplierRequest.fromJson(Map<String, dynamic> json) => _$RegisterSupplierRequestFromJson(json);

@override final  String email;
@override final  String password;
@override final  String firstName;
@override final  String lastName;
@override final  String businessName;

/// Create a copy of RegisterSupplierRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterSupplierRequestCopyWith<_RegisterSupplierRequest> get copyWith => __$RegisterSupplierRequestCopyWithImpl<_RegisterSupplierRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterSupplierRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterSupplierRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.businessName, businessName) || other.businessName == businessName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,businessName);

@override
String toString() {
  return 'RegisterSupplierRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName, businessName: $businessName)';
}


}

/// @nodoc
abstract mixin class _$RegisterSupplierRequestCopyWith<$Res> implements $RegisterSupplierRequestCopyWith<$Res> {
  factory _$RegisterSupplierRequestCopyWith(_RegisterSupplierRequest value, $Res Function(_RegisterSupplierRequest) _then) = __$RegisterSupplierRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String firstName, String lastName, String businessName
});




}
/// @nodoc
class __$RegisterSupplierRequestCopyWithImpl<$Res>
    implements _$RegisterSupplierRequestCopyWith<$Res> {
  __$RegisterSupplierRequestCopyWithImpl(this._self, this._then);

  final _RegisterSupplierRequest _self;
  final $Res Function(_RegisterSupplierRequest) _then;

/// Create a copy of RegisterSupplierRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? businessName = null,}) {
  return _then(_RegisterSupplierRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,businessName: null == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
