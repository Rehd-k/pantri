// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeLocation {

 String? get addressLine; String? get city; String? get state; double? get latitude; double? get longitude; bool get isSet;
/// Create a copy of EmployeeLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeLocationCopyWith<EmployeeLocation> get copyWith => _$EmployeeLocationCopyWithImpl<EmployeeLocation>(this as EmployeeLocation, _$identity);

  /// Serializes this EmployeeLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeLocation&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isSet, isSet) || other.isSet == isSet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressLine,city,state,latitude,longitude,isSet);

@override
String toString() {
  return 'EmployeeLocation(addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isSet: $isSet)';
}


}

/// @nodoc
abstract mixin class $EmployeeLocationCopyWith<$Res>  {
  factory $EmployeeLocationCopyWith(EmployeeLocation value, $Res Function(EmployeeLocation) _then) = _$EmployeeLocationCopyWithImpl;
@useResult
$Res call({
 String? addressLine, String? city, String? state, double? latitude, double? longitude, bool isSet
});




}
/// @nodoc
class _$EmployeeLocationCopyWithImpl<$Res>
    implements $EmployeeLocationCopyWith<$Res> {
  _$EmployeeLocationCopyWithImpl(this._self, this._then);

  final EmployeeLocation _self;
  final $Res Function(EmployeeLocation) _then;

/// Create a copy of EmployeeLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressLine = freezed,Object? city = freezed,Object? state = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? isSet = null,}) {
  return _then(_self.copyWith(
addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isSet: null == isSet ? _self.isSet : isSet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeLocation].
extension EmployeeLocationPatterns on EmployeeLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeLocation value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeLocation value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? addressLine,  String? city,  String? state,  double? latitude,  double? longitude,  bool isSet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeLocation() when $default != null:
return $default(_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isSet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? addressLine,  String? city,  String? state,  double? latitude,  double? longitude,  bool isSet)  $default,) {final _that = this;
switch (_that) {
case _EmployeeLocation():
return $default(_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isSet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? addressLine,  String? city,  String? state,  double? latitude,  double? longitude,  bool isSet)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeLocation() when $default != null:
return $default(_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isSet);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeLocation implements EmployeeLocation {
  const _EmployeeLocation({this.addressLine, this.city, this.state, this.latitude, this.longitude, required this.isSet});
  factory _EmployeeLocation.fromJson(Map<String, dynamic> json) => _$EmployeeLocationFromJson(json);

@override final  String? addressLine;
@override final  String? city;
@override final  String? state;
@override final  double? latitude;
@override final  double? longitude;
@override final  bool isSet;

/// Create a copy of EmployeeLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeLocationCopyWith<_EmployeeLocation> get copyWith => __$EmployeeLocationCopyWithImpl<_EmployeeLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeLocation&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isSet, isSet) || other.isSet == isSet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressLine,city,state,latitude,longitude,isSet);

@override
String toString() {
  return 'EmployeeLocation(addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isSet: $isSet)';
}


}

/// @nodoc
abstract mixin class _$EmployeeLocationCopyWith<$Res> implements $EmployeeLocationCopyWith<$Res> {
  factory _$EmployeeLocationCopyWith(_EmployeeLocation value, $Res Function(_EmployeeLocation) _then) = __$EmployeeLocationCopyWithImpl;
@override @useResult
$Res call({
 String? addressLine, String? city, String? state, double? latitude, double? longitude, bool isSet
});




}
/// @nodoc
class __$EmployeeLocationCopyWithImpl<$Res>
    implements _$EmployeeLocationCopyWith<$Res> {
  __$EmployeeLocationCopyWithImpl(this._self, this._then);

  final _EmployeeLocation _self;
  final $Res Function(_EmployeeLocation) _then;

/// Create a copy of EmployeeLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressLine = freezed,Object? city = freezed,Object? state = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? isSet = null,}) {
  return _then(_EmployeeLocation(
addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isSet: null == isSet ? _self.isSet : isSet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateEmployeeLocationRequest {

 String get addressLine; String get city; String? get state; double get latitude; double get longitude;
/// Create a copy of UpdateEmployeeLocationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmployeeLocationRequestCopyWith<UpdateEmployeeLocationRequest> get copyWith => _$UpdateEmployeeLocationRequestCopyWithImpl<UpdateEmployeeLocationRequest>(this as UpdateEmployeeLocationRequest, _$identity);

  /// Serializes this UpdateEmployeeLocationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmployeeLocationRequest&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressLine,city,state,latitude,longitude);

@override
String toString() {
  return 'UpdateEmployeeLocationRequest(addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $UpdateEmployeeLocationRequestCopyWith<$Res>  {
  factory $UpdateEmployeeLocationRequestCopyWith(UpdateEmployeeLocationRequest value, $Res Function(UpdateEmployeeLocationRequest) _then) = _$UpdateEmployeeLocationRequestCopyWithImpl;
@useResult
$Res call({
 String addressLine, String city, String? state, double latitude, double longitude
});




}
/// @nodoc
class _$UpdateEmployeeLocationRequestCopyWithImpl<$Res>
    implements $UpdateEmployeeLocationRequestCopyWith<$Res> {
  _$UpdateEmployeeLocationRequestCopyWithImpl(this._self, this._then);

  final UpdateEmployeeLocationRequest _self;
  final $Res Function(UpdateEmployeeLocationRequest) _then;

/// Create a copy of UpdateEmployeeLocationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressLine = null,Object? city = null,Object? state = freezed,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateEmployeeLocationRequest].
extension UpdateEmployeeLocationRequestPatterns on UpdateEmployeeLocationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateEmployeeLocationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateEmployeeLocationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateEmployeeLocationRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateEmployeeLocationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateEmployeeLocationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateEmployeeLocationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String addressLine,  String city,  String? state,  double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateEmployeeLocationRequest() when $default != null:
return $default(_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String addressLine,  String city,  String? state,  double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _UpdateEmployeeLocationRequest():
return $default(_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String addressLine,  String city,  String? state,  double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _UpdateEmployeeLocationRequest() when $default != null:
return $default(_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateEmployeeLocationRequest implements UpdateEmployeeLocationRequest {
  const _UpdateEmployeeLocationRequest({required this.addressLine, required this.city, this.state, required this.latitude, required this.longitude});
  factory _UpdateEmployeeLocationRequest.fromJson(Map<String, dynamic> json) => _$UpdateEmployeeLocationRequestFromJson(json);

@override final  String addressLine;
@override final  String city;
@override final  String? state;
@override final  double latitude;
@override final  double longitude;

/// Create a copy of UpdateEmployeeLocationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEmployeeLocationRequestCopyWith<_UpdateEmployeeLocationRequest> get copyWith => __$UpdateEmployeeLocationRequestCopyWithImpl<_UpdateEmployeeLocationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateEmployeeLocationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEmployeeLocationRequest&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressLine,city,state,latitude,longitude);

@override
String toString() {
  return 'UpdateEmployeeLocationRequest(addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$UpdateEmployeeLocationRequestCopyWith<$Res> implements $UpdateEmployeeLocationRequestCopyWith<$Res> {
  factory _$UpdateEmployeeLocationRequestCopyWith(_UpdateEmployeeLocationRequest value, $Res Function(_UpdateEmployeeLocationRequest) _then) = __$UpdateEmployeeLocationRequestCopyWithImpl;
@override @useResult
$Res call({
 String addressLine, String city, String? state, double latitude, double longitude
});




}
/// @nodoc
class __$UpdateEmployeeLocationRequestCopyWithImpl<$Res>
    implements _$UpdateEmployeeLocationRequestCopyWith<$Res> {
  __$UpdateEmployeeLocationRequestCopyWithImpl(this._self, this._then);

  final _UpdateEmployeeLocationRequest _self;
  final $Res Function(_UpdateEmployeeLocationRequest) _then;

/// Create a copy of UpdateEmployeeLocationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressLine = null,Object? city = null,Object? state = freezed,Object? latitude = null,Object? longitude = null,}) {
  return _then(_UpdateEmployeeLocationRequest(
addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CompanyListItem {

 String get id; String get name; String get inviteCode;
/// Create a copy of CompanyListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyListItemCopyWith<CompanyListItem> get copyWith => _$CompanyListItemCopyWithImpl<CompanyListItem>(this as CompanyListItem, _$identity);

  /// Serializes this CompanyListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,inviteCode);

@override
String toString() {
  return 'CompanyListItem(id: $id, name: $name, inviteCode: $inviteCode)';
}


}

/// @nodoc
abstract mixin class $CompanyListItemCopyWith<$Res>  {
  factory $CompanyListItemCopyWith(CompanyListItem value, $Res Function(CompanyListItem) _then) = _$CompanyListItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, String inviteCode
});




}
/// @nodoc
class _$CompanyListItemCopyWithImpl<$Res>
    implements $CompanyListItemCopyWith<$Res> {
  _$CompanyListItemCopyWithImpl(this._self, this._then);

  final CompanyListItem _self;
  final $Res Function(CompanyListItem) _then;

/// Create a copy of CompanyListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? inviteCode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyListItem].
extension CompanyListItemPatterns on CompanyListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyListItem value)  $default,){
final _that = this;
switch (_that) {
case _CompanyListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyListItem value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String inviteCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyListItem() when $default != null:
return $default(_that.id,_that.name,_that.inviteCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String inviteCode)  $default,) {final _that = this;
switch (_that) {
case _CompanyListItem():
return $default(_that.id,_that.name,_that.inviteCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String inviteCode)?  $default,) {final _that = this;
switch (_that) {
case _CompanyListItem() when $default != null:
return $default(_that.id,_that.name,_that.inviteCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyListItem implements CompanyListItem {
  const _CompanyListItem({required this.id, required this.name, required this.inviteCode});
  factory _CompanyListItem.fromJson(Map<String, dynamic> json) => _$CompanyListItemFromJson(json);

@override final  String id;
@override final  String name;
@override final  String inviteCode;

/// Create a copy of CompanyListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyListItemCopyWith<_CompanyListItem> get copyWith => __$CompanyListItemCopyWithImpl<_CompanyListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,inviteCode);

@override
String toString() {
  return 'CompanyListItem(id: $id, name: $name, inviteCode: $inviteCode)';
}


}

/// @nodoc
abstract mixin class _$CompanyListItemCopyWith<$Res> implements $CompanyListItemCopyWith<$Res> {
  factory _$CompanyListItemCopyWith(_CompanyListItem value, $Res Function(_CompanyListItem) _then) = __$CompanyListItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String inviteCode
});




}
/// @nodoc
class __$CompanyListItemCopyWithImpl<$Res>
    implements _$CompanyListItemCopyWith<$Res> {
  __$CompanyListItemCopyWithImpl(this._self, this._then);

  final _CompanyListItem _self;
  final $Res Function(_CompanyListItem) _then;

/// Create a copy of CompanyListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? inviteCode = null,}) {
  return _then(_CompanyListItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PickupPoint {

 String get id; String get companyId; String get label; String get addressLine; String get city; String? get state; double get latitude; double get longitude; bool get isActive; String get updatedAt; double? get distanceKm;
/// Create a copy of PickupPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupPointCopyWith<PickupPoint> get copyWith => _$PickupPointCopyWithImpl<PickupPoint>(this as PickupPoint, _$identity);

  /// Serializes this PickupPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.label, label) || other.label == label)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,label,addressLine,city,state,latitude,longitude,isActive,updatedAt,distanceKm);

@override
String toString() {
  return 'PickupPoint(id: $id, companyId: $companyId, label: $label, addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isActive: $isActive, updatedAt: $updatedAt, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class $PickupPointCopyWith<$Res>  {
  factory $PickupPointCopyWith(PickupPoint value, $Res Function(PickupPoint) _then) = _$PickupPointCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String label, String addressLine, String city, String? state, double latitude, double longitude, bool isActive, String updatedAt, double? distanceKm
});




}
/// @nodoc
class _$PickupPointCopyWithImpl<$Res>
    implements $PickupPointCopyWith<$Res> {
  _$PickupPointCopyWithImpl(this._self, this._then);

  final PickupPoint _self;
  final $Res Function(PickupPoint) _then;

/// Create a copy of PickupPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? label = null,Object? addressLine = null,Object? city = null,Object? state = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,Object? updatedAt = null,Object? distanceKm = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupPoint].
extension PickupPointPatterns on PickupPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupPoint value)  $default,){
final _that = this;
switch (_that) {
case _PickupPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupPoint value)?  $default,){
final _that = this;
switch (_that) {
case _PickupPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String label,  String addressLine,  String city,  String? state,  double latitude,  double longitude,  bool isActive,  String updatedAt,  double? distanceKm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupPoint() when $default != null:
return $default(_that.id,_that.companyId,_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive,_that.updatedAt,_that.distanceKm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String label,  String addressLine,  String city,  String? state,  double latitude,  double longitude,  bool isActive,  String updatedAt,  double? distanceKm)  $default,) {final _that = this;
switch (_that) {
case _PickupPoint():
return $default(_that.id,_that.companyId,_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive,_that.updatedAt,_that.distanceKm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String label,  String addressLine,  String city,  String? state,  double latitude,  double longitude,  bool isActive,  String updatedAt,  double? distanceKm)?  $default,) {final _that = this;
switch (_that) {
case _PickupPoint() when $default != null:
return $default(_that.id,_that.companyId,_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive,_that.updatedAt,_that.distanceKm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupPoint implements PickupPoint {
  const _PickupPoint({required this.id, required this.companyId, required this.label, required this.addressLine, required this.city, this.state, required this.latitude, required this.longitude, required this.isActive, required this.updatedAt, this.distanceKm});
  factory _PickupPoint.fromJson(Map<String, dynamic> json) => _$PickupPointFromJson(json);

@override final  String id;
@override final  String companyId;
@override final  String label;
@override final  String addressLine;
@override final  String city;
@override final  String? state;
@override final  double latitude;
@override final  double longitude;
@override final  bool isActive;
@override final  String updatedAt;
@override final  double? distanceKm;

/// Create a copy of PickupPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupPointCopyWith<_PickupPoint> get copyWith => __$PickupPointCopyWithImpl<_PickupPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.label, label) || other.label == label)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,label,addressLine,city,state,latitude,longitude,isActive,updatedAt,distanceKm);

@override
String toString() {
  return 'PickupPoint(id: $id, companyId: $companyId, label: $label, addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isActive: $isActive, updatedAt: $updatedAt, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class _$PickupPointCopyWith<$Res> implements $PickupPointCopyWith<$Res> {
  factory _$PickupPointCopyWith(_PickupPoint value, $Res Function(_PickupPoint) _then) = __$PickupPointCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String label, String addressLine, String city, String? state, double latitude, double longitude, bool isActive, String updatedAt, double? distanceKm
});




}
/// @nodoc
class __$PickupPointCopyWithImpl<$Res>
    implements _$PickupPointCopyWith<$Res> {
  __$PickupPointCopyWithImpl(this._self, this._then);

  final _PickupPoint _self;
  final $Res Function(_PickupPoint) _then;

/// Create a copy of PickupPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? label = null,Object? addressLine = null,Object? city = null,Object? state = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,Object? updatedAt = null,Object? distanceKm = freezed,}) {
  return _then(_PickupPoint(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CreatePickupPointRequest {

 String get label; String get addressLine; String get city; String? get state; double get latitude; double get longitude; bool get isActive;
/// Create a copy of CreatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePickupPointRequestCopyWith<CreatePickupPointRequest> get copyWith => _$CreatePickupPointRequestCopyWithImpl<CreatePickupPointRequest>(this as CreatePickupPointRequest, _$identity);

  /// Serializes this CreatePickupPointRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePickupPointRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,addressLine,city,state,latitude,longitude,isActive);

@override
String toString() {
  return 'CreatePickupPointRequest(label: $label, addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CreatePickupPointRequestCopyWith<$Res>  {
  factory $CreatePickupPointRequestCopyWith(CreatePickupPointRequest value, $Res Function(CreatePickupPointRequest) _then) = _$CreatePickupPointRequestCopyWithImpl;
@useResult
$Res call({
 String label, String addressLine, String city, String? state, double latitude, double longitude, bool isActive
});




}
/// @nodoc
class _$CreatePickupPointRequestCopyWithImpl<$Res>
    implements $CreatePickupPointRequestCopyWith<$Res> {
  _$CreatePickupPointRequestCopyWithImpl(this._self, this._then);

  final CreatePickupPointRequest _self;
  final $Res Function(CreatePickupPointRequest) _then;

/// Create a copy of CreatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? addressLine = null,Object? city = null,Object? state = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePickupPointRequest].
extension CreatePickupPointRequestPatterns on CreatePickupPointRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePickupPointRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePickupPointRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePickupPointRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreatePickupPointRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePickupPointRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePickupPointRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String addressLine,  String city,  String? state,  double latitude,  double longitude,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePickupPointRequest() when $default != null:
return $default(_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String addressLine,  String city,  String? state,  double latitude,  double longitude,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _CreatePickupPointRequest():
return $default(_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String addressLine,  String city,  String? state,  double latitude,  double longitude,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _CreatePickupPointRequest() when $default != null:
return $default(_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePickupPointRequest implements CreatePickupPointRequest {
  const _CreatePickupPointRequest({required this.label, required this.addressLine, required this.city, this.state, required this.latitude, required this.longitude, this.isActive = true});
  factory _CreatePickupPointRequest.fromJson(Map<String, dynamic> json) => _$CreatePickupPointRequestFromJson(json);

@override final  String label;
@override final  String addressLine;
@override final  String city;
@override final  String? state;
@override final  double latitude;
@override final  double longitude;
@override@JsonKey() final  bool isActive;

/// Create a copy of CreatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePickupPointRequestCopyWith<_CreatePickupPointRequest> get copyWith => __$CreatePickupPointRequestCopyWithImpl<_CreatePickupPointRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePickupPointRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePickupPointRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,addressLine,city,state,latitude,longitude,isActive);

@override
String toString() {
  return 'CreatePickupPointRequest(label: $label, addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CreatePickupPointRequestCopyWith<$Res> implements $CreatePickupPointRequestCopyWith<$Res> {
  factory _$CreatePickupPointRequestCopyWith(_CreatePickupPointRequest value, $Res Function(_CreatePickupPointRequest) _then) = __$CreatePickupPointRequestCopyWithImpl;
@override @useResult
$Res call({
 String label, String addressLine, String city, String? state, double latitude, double longitude, bool isActive
});




}
/// @nodoc
class __$CreatePickupPointRequestCopyWithImpl<$Res>
    implements _$CreatePickupPointRequestCopyWith<$Res> {
  __$CreatePickupPointRequestCopyWithImpl(this._self, this._then);

  final _CreatePickupPointRequest _self;
  final $Res Function(_CreatePickupPointRequest) _then;

/// Create a copy of CreatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? addressLine = null,Object? city = null,Object? state = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,}) {
  return _then(_CreatePickupPointRequest(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,addressLine: null == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdatePickupPointRequest {

 String? get label; String? get addressLine; String? get city; String? get state; double? get latitude; double? get longitude; bool? get isActive;
/// Create a copy of UpdatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePickupPointRequestCopyWith<UpdatePickupPointRequest> get copyWith => _$UpdatePickupPointRequestCopyWithImpl<UpdatePickupPointRequest>(this as UpdatePickupPointRequest, _$identity);

  /// Serializes this UpdatePickupPointRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePickupPointRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,addressLine,city,state,latitude,longitude,isActive);

@override
String toString() {
  return 'UpdatePickupPointRequest(label: $label, addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $UpdatePickupPointRequestCopyWith<$Res>  {
  factory $UpdatePickupPointRequestCopyWith(UpdatePickupPointRequest value, $Res Function(UpdatePickupPointRequest) _then) = _$UpdatePickupPointRequestCopyWithImpl;
@useResult
$Res call({
 String? label, String? addressLine, String? city, String? state, double? latitude, double? longitude, bool? isActive
});




}
/// @nodoc
class _$UpdatePickupPointRequestCopyWithImpl<$Res>
    implements $UpdatePickupPointRequestCopyWith<$Res> {
  _$UpdatePickupPointRequestCopyWithImpl(this._self, this._then);

  final UpdatePickupPointRequest _self;
  final $Res Function(UpdatePickupPointRequest) _then;

/// Create a copy of UpdatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? addressLine = freezed,Object? city = freezed,Object? state = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePickupPointRequest].
extension UpdatePickupPointRequestPatterns on UpdatePickupPointRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePickupPointRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePickupPointRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePickupPointRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePickupPointRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePickupPointRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePickupPointRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? label,  String? addressLine,  String? city,  String? state,  double? latitude,  double? longitude,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePickupPointRequest() when $default != null:
return $default(_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? label,  String? addressLine,  String? city,  String? state,  double? latitude,  double? longitude,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _UpdatePickupPointRequest():
return $default(_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? label,  String? addressLine,  String? city,  String? state,  double? latitude,  double? longitude,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePickupPointRequest() when $default != null:
return $default(_that.label,_that.addressLine,_that.city,_that.state,_that.latitude,_that.longitude,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePickupPointRequest implements UpdatePickupPointRequest {
  const _UpdatePickupPointRequest({this.label, this.addressLine, this.city, this.state, this.latitude, this.longitude, this.isActive});
  factory _UpdatePickupPointRequest.fromJson(Map<String, dynamic> json) => _$UpdatePickupPointRequestFromJson(json);

@override final  String? label;
@override final  String? addressLine;
@override final  String? city;
@override final  String? state;
@override final  double? latitude;
@override final  double? longitude;
@override final  bool? isActive;

/// Create a copy of UpdatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePickupPointRequestCopyWith<_UpdatePickupPointRequest> get copyWith => __$UpdatePickupPointRequestCopyWithImpl<_UpdatePickupPointRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePickupPointRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePickupPointRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,addressLine,city,state,latitude,longitude,isActive);

@override
String toString() {
  return 'UpdatePickupPointRequest(label: $label, addressLine: $addressLine, city: $city, state: $state, latitude: $latitude, longitude: $longitude, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$UpdatePickupPointRequestCopyWith<$Res> implements $UpdatePickupPointRequestCopyWith<$Res> {
  factory _$UpdatePickupPointRequestCopyWith(_UpdatePickupPointRequest value, $Res Function(_UpdatePickupPointRequest) _then) = __$UpdatePickupPointRequestCopyWithImpl;
@override @useResult
$Res call({
 String? label, String? addressLine, String? city, String? state, double? latitude, double? longitude, bool? isActive
});




}
/// @nodoc
class __$UpdatePickupPointRequestCopyWithImpl<$Res>
    implements _$UpdatePickupPointRequestCopyWith<$Res> {
  __$UpdatePickupPointRequestCopyWithImpl(this._self, this._then);

  final _UpdatePickupPointRequest _self;
  final $Res Function(_UpdatePickupPointRequest) _then;

/// Create a copy of UpdatePickupPointRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? addressLine = freezed,Object? city = freezed,Object? state = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? isActive = freezed,}) {
  return _then(_UpdatePickupPointRequest(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$CheckoutRequest {

 String get pickupPointId;
/// Create a copy of CheckoutRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutRequestCopyWith<CheckoutRequest> get copyWith => _$CheckoutRequestCopyWithImpl<CheckoutRequest>(this as CheckoutRequest, _$identity);

  /// Serializes this CheckoutRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutRequest&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pickupPointId);

@override
String toString() {
  return 'CheckoutRequest(pickupPointId: $pickupPointId)';
}


}

/// @nodoc
abstract mixin class $CheckoutRequestCopyWith<$Res>  {
  factory $CheckoutRequestCopyWith(CheckoutRequest value, $Res Function(CheckoutRequest) _then) = _$CheckoutRequestCopyWithImpl;
@useResult
$Res call({
 String pickupPointId
});




}
/// @nodoc
class _$CheckoutRequestCopyWithImpl<$Res>
    implements $CheckoutRequestCopyWith<$Res> {
  _$CheckoutRequestCopyWithImpl(this._self, this._then);

  final CheckoutRequest _self;
  final $Res Function(CheckoutRequest) _then;

/// Create a copy of CheckoutRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pickupPointId = null,}) {
  return _then(_self.copyWith(
pickupPointId: null == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutRequest].
extension CheckoutRequestPatterns on CheckoutRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutRequest value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pickupPointId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutRequest() when $default != null:
return $default(_that.pickupPointId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pickupPointId)  $default,) {final _that = this;
switch (_that) {
case _CheckoutRequest():
return $default(_that.pickupPointId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pickupPointId)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutRequest() when $default != null:
return $default(_that.pickupPointId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutRequest implements CheckoutRequest {
  const _CheckoutRequest({required this.pickupPointId});
  factory _CheckoutRequest.fromJson(Map<String, dynamic> json) => _$CheckoutRequestFromJson(json);

@override final  String pickupPointId;

/// Create a copy of CheckoutRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutRequestCopyWith<_CheckoutRequest> get copyWith => __$CheckoutRequestCopyWithImpl<_CheckoutRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutRequest&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pickupPointId);

@override
String toString() {
  return 'CheckoutRequest(pickupPointId: $pickupPointId)';
}


}

/// @nodoc
abstract mixin class _$CheckoutRequestCopyWith<$Res> implements $CheckoutRequestCopyWith<$Res> {
  factory _$CheckoutRequestCopyWith(_CheckoutRequest value, $Res Function(_CheckoutRequest) _then) = __$CheckoutRequestCopyWithImpl;
@override @useResult
$Res call({
 String pickupPointId
});




}
/// @nodoc
class __$CheckoutRequestCopyWithImpl<$Res>
    implements _$CheckoutRequestCopyWith<$Res> {
  __$CheckoutRequestCopyWithImpl(this._self, this._then);

  final _CheckoutRequest _self;
  final $Res Function(_CheckoutRequest) _then;

/// Create a copy of CheckoutRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pickupPointId = null,}) {
  return _then(_CheckoutRequest(
pickupPointId: null == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CheckoutOrderItem {

 String get productId; String? get packId; String get brand; String get packageLabel; String get name; int get quantity; int get unitPriceKobo; int get lineTotalKobo;
/// Create a copy of CheckoutOrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutOrderItemCopyWith<CheckoutOrderItem> get copyWith => _$CheckoutOrderItemCopyWithImpl<CheckoutOrderItem>(this as CheckoutOrderItem, _$identity);

  /// Serializes this CheckoutOrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutOrderItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPriceKobo, unitPriceKobo) || other.unitPriceKobo == unitPriceKobo)&&(identical(other.lineTotalKobo, lineTotalKobo) || other.lineTotalKobo == lineTotalKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,packId,brand,packageLabel,name,quantity,unitPriceKobo,lineTotalKobo);

@override
String toString() {
  return 'CheckoutOrderItem(productId: $productId, packId: $packId, brand: $brand, packageLabel: $packageLabel, name: $name, quantity: $quantity, unitPriceKobo: $unitPriceKobo, lineTotalKobo: $lineTotalKobo)';
}


}

/// @nodoc
abstract mixin class $CheckoutOrderItemCopyWith<$Res>  {
  factory $CheckoutOrderItemCopyWith(CheckoutOrderItem value, $Res Function(CheckoutOrderItem) _then) = _$CheckoutOrderItemCopyWithImpl;
@useResult
$Res call({
 String productId, String? packId, String brand, String packageLabel, String name, int quantity, int unitPriceKobo, int lineTotalKobo
});




}
/// @nodoc
class _$CheckoutOrderItemCopyWithImpl<$Res>
    implements $CheckoutOrderItemCopyWith<$Res> {
  _$CheckoutOrderItemCopyWithImpl(this._self, this._then);

  final CheckoutOrderItem _self;
  final $Res Function(CheckoutOrderItem) _then;

/// Create a copy of CheckoutOrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? packId = freezed,Object? brand = null,Object? packageLabel = null,Object? name = null,Object? quantity = null,Object? unitPriceKobo = null,Object? lineTotalKobo = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPriceKobo: null == unitPriceKobo ? _self.unitPriceKobo : unitPriceKobo // ignore: cast_nullable_to_non_nullable
as int,lineTotalKobo: null == lineTotalKobo ? _self.lineTotalKobo : lineTotalKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutOrderItem].
extension CheckoutOrderItemPatterns on CheckoutOrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutOrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutOrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutOrderItem value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutOrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutOrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutOrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String? packId,  String brand,  String packageLabel,  String name,  int quantity,  int unitPriceKobo,  int lineTotalKobo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutOrderItem() when $default != null:
return $default(_that.productId,_that.packId,_that.brand,_that.packageLabel,_that.name,_that.quantity,_that.unitPriceKobo,_that.lineTotalKobo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String? packId,  String brand,  String packageLabel,  String name,  int quantity,  int unitPriceKobo,  int lineTotalKobo)  $default,) {final _that = this;
switch (_that) {
case _CheckoutOrderItem():
return $default(_that.productId,_that.packId,_that.brand,_that.packageLabel,_that.name,_that.quantity,_that.unitPriceKobo,_that.lineTotalKobo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String? packId,  String brand,  String packageLabel,  String name,  int quantity,  int unitPriceKobo,  int lineTotalKobo)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutOrderItem() when $default != null:
return $default(_that.productId,_that.packId,_that.brand,_that.packageLabel,_that.name,_that.quantity,_that.unitPriceKobo,_that.lineTotalKobo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutOrderItem implements CheckoutOrderItem {
  const _CheckoutOrderItem({required this.productId, this.packId, this.brand = '', this.packageLabel = '', required this.name, required this.quantity, required this.unitPriceKobo, required this.lineTotalKobo});
  factory _CheckoutOrderItem.fromJson(Map<String, dynamic> json) => _$CheckoutOrderItemFromJson(json);

@override final  String productId;
@override final  String? packId;
@override@JsonKey() final  String brand;
@override@JsonKey() final  String packageLabel;
@override final  String name;
@override final  int quantity;
@override final  int unitPriceKobo;
@override final  int lineTotalKobo;

/// Create a copy of CheckoutOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutOrderItemCopyWith<_CheckoutOrderItem> get copyWith => __$CheckoutOrderItemCopyWithImpl<_CheckoutOrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutOrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutOrderItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.name, name) || other.name == name)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPriceKobo, unitPriceKobo) || other.unitPriceKobo == unitPriceKobo)&&(identical(other.lineTotalKobo, lineTotalKobo) || other.lineTotalKobo == lineTotalKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,packId,brand,packageLabel,name,quantity,unitPriceKobo,lineTotalKobo);

@override
String toString() {
  return 'CheckoutOrderItem(productId: $productId, packId: $packId, brand: $brand, packageLabel: $packageLabel, name: $name, quantity: $quantity, unitPriceKobo: $unitPriceKobo, lineTotalKobo: $lineTotalKobo)';
}


}

/// @nodoc
abstract mixin class _$CheckoutOrderItemCopyWith<$Res> implements $CheckoutOrderItemCopyWith<$Res> {
  factory _$CheckoutOrderItemCopyWith(_CheckoutOrderItem value, $Res Function(_CheckoutOrderItem) _then) = __$CheckoutOrderItemCopyWithImpl;
@override @useResult
$Res call({
 String productId, String? packId, String brand, String packageLabel, String name, int quantity, int unitPriceKobo, int lineTotalKobo
});




}
/// @nodoc
class __$CheckoutOrderItemCopyWithImpl<$Res>
    implements _$CheckoutOrderItemCopyWith<$Res> {
  __$CheckoutOrderItemCopyWithImpl(this._self, this._then);

  final _CheckoutOrderItem _self;
  final $Res Function(_CheckoutOrderItem) _then;

/// Create a copy of CheckoutOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? packId = freezed,Object? brand = null,Object? packageLabel = null,Object? name = null,Object? quantity = null,Object? unitPriceKobo = null,Object? lineTotalKobo = null,}) {
  return _then(_CheckoutOrderItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPriceKobo: null == unitPriceKobo ? _self.unitPriceKobo : unitPriceKobo // ignore: cast_nullable_to_non_nullable
as int,lineTotalKobo: null == lineTotalKobo ? _self.lineTotalKobo : lineTotalKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CheckoutResponse {

 String get id;@JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson) OrderFulfillmentStatus get fulfillmentStatus;@JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson) OrderCreditStatus get creditStatus; int get subtotalKobo; int get deliveryFeeKobo; int get serviceFeeKobo; int get totalKobo;/// Amount held against the employee's credit account for this order.
 int get reservedKobo; String get pickupPointId; String get pickupPointLabel; List<CheckoutOrderItem> get items; String get createdAt;
/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutResponseCopyWith<CheckoutResponse> get copyWith => _$CheckoutResponseCopyWithImpl<CheckoutResponse>(this as CheckoutResponse, _$identity);

  /// Serializes this CheckoutResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.fulfillmentStatus, fulfillmentStatus) || other.fulfillmentStatus == fulfillmentStatus)&&(identical(other.creditStatus, creditStatus) || other.creditStatus == creditStatus)&&(identical(other.subtotalKobo, subtotalKobo) || other.subtotalKobo == subtotalKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.serviceFeeKobo, serviceFeeKobo) || other.serviceFeeKobo == serviceFeeKobo)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo)&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId)&&(identical(other.pickupPointLabel, pickupPointLabel) || other.pickupPointLabel == pickupPointLabel)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fulfillmentStatus,creditStatus,subtotalKobo,deliveryFeeKobo,serviceFeeKobo,totalKobo,reservedKobo,pickupPointId,pickupPointLabel,const DeepCollectionEquality().hash(items),createdAt);

@override
String toString() {
  return 'CheckoutResponse(id: $id, fulfillmentStatus: $fulfillmentStatus, creditStatus: $creditStatus, subtotalKobo: $subtotalKobo, deliveryFeeKobo: $deliveryFeeKobo, serviceFeeKobo: $serviceFeeKobo, totalKobo: $totalKobo, reservedKobo: $reservedKobo, pickupPointId: $pickupPointId, pickupPointLabel: $pickupPointLabel, items: $items, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CheckoutResponseCopyWith<$Res>  {
  factory $CheckoutResponseCopyWith(CheckoutResponse value, $Res Function(CheckoutResponse) _then) = _$CheckoutResponseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson) OrderFulfillmentStatus fulfillmentStatus,@JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson) OrderCreditStatus creditStatus, int subtotalKobo, int deliveryFeeKobo, int serviceFeeKobo, int totalKobo, int reservedKobo, String pickupPointId, String pickupPointLabel, List<CheckoutOrderItem> items, String createdAt
});




}
/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._self, this._then);

  final CheckoutResponse _self;
  final $Res Function(CheckoutResponse) _then;

/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fulfillmentStatus = null,Object? creditStatus = null,Object? subtotalKobo = null,Object? deliveryFeeKobo = null,Object? serviceFeeKobo = null,Object? totalKobo = null,Object? reservedKobo = null,Object? pickupPointId = null,Object? pickupPointLabel = null,Object? items = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fulfillmentStatus: null == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as OrderFulfillmentStatus,creditStatus: null == creditStatus ? _self.creditStatus : creditStatus // ignore: cast_nullable_to_non_nullable
as OrderCreditStatus,subtotalKobo: null == subtotalKobo ? _self.subtotalKobo : subtotalKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,serviceFeeKobo: null == serviceFeeKobo ? _self.serviceFeeKobo : serviceFeeKobo // ignore: cast_nullable_to_non_nullable
as int,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,reservedKobo: null == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int,pickupPointId: null == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String,pickupPointLabel: null == pickupPointLabel ? _self.pickupPointLabel : pickupPointLabel // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutOrderItem>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutResponse].
extension CheckoutResponsePatterns on CheckoutResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutResponse value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson)  OrderFulfillmentStatus fulfillmentStatus, @JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson)  OrderCreditStatus creditStatus,  int subtotalKobo,  int deliveryFeeKobo,  int serviceFeeKobo,  int totalKobo,  int reservedKobo,  String pickupPointId,  String pickupPointLabel,  List<CheckoutOrderItem> items,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
return $default(_that.id,_that.fulfillmentStatus,_that.creditStatus,_that.subtotalKobo,_that.deliveryFeeKobo,_that.serviceFeeKobo,_that.totalKobo,_that.reservedKobo,_that.pickupPointId,_that.pickupPointLabel,_that.items,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson)  OrderFulfillmentStatus fulfillmentStatus, @JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson)  OrderCreditStatus creditStatus,  int subtotalKobo,  int deliveryFeeKobo,  int serviceFeeKobo,  int totalKobo,  int reservedKobo,  String pickupPointId,  String pickupPointLabel,  List<CheckoutOrderItem> items,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _CheckoutResponse():
return $default(_that.id,_that.fulfillmentStatus,_that.creditStatus,_that.subtotalKobo,_that.deliveryFeeKobo,_that.serviceFeeKobo,_that.totalKobo,_that.reservedKobo,_that.pickupPointId,_that.pickupPointLabel,_that.items,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson)  OrderFulfillmentStatus fulfillmentStatus, @JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson)  OrderCreditStatus creditStatus,  int subtotalKobo,  int deliveryFeeKobo,  int serviceFeeKobo,  int totalKobo,  int reservedKobo,  String pickupPointId,  String pickupPointLabel,  List<CheckoutOrderItem> items,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutResponse() when $default != null:
return $default(_that.id,_that.fulfillmentStatus,_that.creditStatus,_that.subtotalKobo,_that.deliveryFeeKobo,_that.serviceFeeKobo,_that.totalKobo,_that.reservedKobo,_that.pickupPointId,_that.pickupPointLabel,_that.items,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutResponse implements CheckoutResponse {
  const _CheckoutResponse({required this.id, @JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson) required this.fulfillmentStatus, @JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson) required this.creditStatus, required this.subtotalKobo, required this.deliveryFeeKobo, required this.serviceFeeKobo, required this.totalKobo, required this.reservedKobo, required this.pickupPointId, required this.pickupPointLabel, required final  List<CheckoutOrderItem> items, required this.createdAt}): _items = items;
  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) => _$CheckoutResponseFromJson(json);

@override final  String id;
@override@JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson) final  OrderFulfillmentStatus fulfillmentStatus;
@override@JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson) final  OrderCreditStatus creditStatus;
@override final  int subtotalKobo;
@override final  int deliveryFeeKobo;
@override final  int serviceFeeKobo;
@override final  int totalKobo;
/// Amount held against the employee's credit account for this order.
@override final  int reservedKobo;
@override final  String pickupPointId;
@override final  String pickupPointLabel;
 final  List<CheckoutOrderItem> _items;
@override List<CheckoutOrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String createdAt;

/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutResponseCopyWith<_CheckoutResponse> get copyWith => __$CheckoutResponseCopyWithImpl<_CheckoutResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.fulfillmentStatus, fulfillmentStatus) || other.fulfillmentStatus == fulfillmentStatus)&&(identical(other.creditStatus, creditStatus) || other.creditStatus == creditStatus)&&(identical(other.subtotalKobo, subtotalKobo) || other.subtotalKobo == subtotalKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.serviceFeeKobo, serviceFeeKobo) || other.serviceFeeKobo == serviceFeeKobo)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo)&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId)&&(identical(other.pickupPointLabel, pickupPointLabel) || other.pickupPointLabel == pickupPointLabel)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fulfillmentStatus,creditStatus,subtotalKobo,deliveryFeeKobo,serviceFeeKobo,totalKobo,reservedKobo,pickupPointId,pickupPointLabel,const DeepCollectionEquality().hash(_items),createdAt);

@override
String toString() {
  return 'CheckoutResponse(id: $id, fulfillmentStatus: $fulfillmentStatus, creditStatus: $creditStatus, subtotalKobo: $subtotalKobo, deliveryFeeKobo: $deliveryFeeKobo, serviceFeeKobo: $serviceFeeKobo, totalKobo: $totalKobo, reservedKobo: $reservedKobo, pickupPointId: $pickupPointId, pickupPointLabel: $pickupPointLabel, items: $items, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CheckoutResponseCopyWith<$Res> implements $CheckoutResponseCopyWith<$Res> {
  factory _$CheckoutResponseCopyWith(_CheckoutResponse value, $Res Function(_CheckoutResponse) _then) = __$CheckoutResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(fromJson: OrderFulfillmentStatus.fromApi, toJson: _fulfillmentStatusToJson) OrderFulfillmentStatus fulfillmentStatus,@JsonKey(fromJson: OrderCreditStatus.fromApi, toJson: _creditStatusToJson) OrderCreditStatus creditStatus, int subtotalKobo, int deliveryFeeKobo, int serviceFeeKobo, int totalKobo, int reservedKobo, String pickupPointId, String pickupPointLabel, List<CheckoutOrderItem> items, String createdAt
});




}
/// @nodoc
class __$CheckoutResponseCopyWithImpl<$Res>
    implements _$CheckoutResponseCopyWith<$Res> {
  __$CheckoutResponseCopyWithImpl(this._self, this._then);

  final _CheckoutResponse _self;
  final $Res Function(_CheckoutResponse) _then;

/// Create a copy of CheckoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fulfillmentStatus = null,Object? creditStatus = null,Object? subtotalKobo = null,Object? deliveryFeeKobo = null,Object? serviceFeeKobo = null,Object? totalKobo = null,Object? reservedKobo = null,Object? pickupPointId = null,Object? pickupPointLabel = null,Object? items = null,Object? createdAt = null,}) {
  return _then(_CheckoutResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fulfillmentStatus: null == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as OrderFulfillmentStatus,creditStatus: null == creditStatus ? _self.creditStatus : creditStatus // ignore: cast_nullable_to_non_nullable
as OrderCreditStatus,subtotalKobo: null == subtotalKobo ? _self.subtotalKobo : subtotalKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,serviceFeeKobo: null == serviceFeeKobo ? _self.serviceFeeKobo : serviceFeeKobo // ignore: cast_nullable_to_non_nullable
as int,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,reservedKobo: null == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int,pickupPointId: null == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String,pickupPointLabel: null == pickupPointLabel ? _self.pickupPointLabel : pickupPointLabel // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutOrderItem>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
