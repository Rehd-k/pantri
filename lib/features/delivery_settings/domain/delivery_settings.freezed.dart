// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliverySettings {

 String get id; int get freeDeliveryMinKobo; int get deliveryFeeKobo; String get updatedAt;
/// Create a copy of DeliverySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliverySettingsCopyWith<DeliverySettings> get copyWith => _$DeliverySettingsCopyWithImpl<DeliverySettings>(this as DeliverySettings, _$identity);

  /// Serializes this DeliverySettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliverySettings&&(identical(other.id, id) || other.id == id)&&(identical(other.freeDeliveryMinKobo, freeDeliveryMinKobo) || other.freeDeliveryMinKobo == freeDeliveryMinKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freeDeliveryMinKobo,deliveryFeeKobo,updatedAt);

@override
String toString() {
  return 'DeliverySettings(id: $id, freeDeliveryMinKobo: $freeDeliveryMinKobo, deliveryFeeKobo: $deliveryFeeKobo, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DeliverySettingsCopyWith<$Res>  {
  factory $DeliverySettingsCopyWith(DeliverySettings value, $Res Function(DeliverySettings) _then) = _$DeliverySettingsCopyWithImpl;
@useResult
$Res call({
 String id, int freeDeliveryMinKobo, int deliveryFeeKobo, String updatedAt
});




}
/// @nodoc
class _$DeliverySettingsCopyWithImpl<$Res>
    implements $DeliverySettingsCopyWith<$Res> {
  _$DeliverySettingsCopyWithImpl(this._self, this._then);

  final DeliverySettings _self;
  final $Res Function(DeliverySettings) _then;

/// Create a copy of DeliverySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? freeDeliveryMinKobo = null,Object? deliveryFeeKobo = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freeDeliveryMinKobo: null == freeDeliveryMinKobo ? _self.freeDeliveryMinKobo : freeDeliveryMinKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliverySettings].
extension DeliverySettingsPatterns on DeliverySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliverySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliverySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliverySettings value)  $default,){
final _that = this;
switch (_that) {
case _DeliverySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliverySettings value)?  $default,){
final _that = this;
switch (_that) {
case _DeliverySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int freeDeliveryMinKobo,  int deliveryFeeKobo,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliverySettings() when $default != null:
return $default(_that.id,_that.freeDeliveryMinKobo,_that.deliveryFeeKobo,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int freeDeliveryMinKobo,  int deliveryFeeKobo,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DeliverySettings():
return $default(_that.id,_that.freeDeliveryMinKobo,_that.deliveryFeeKobo,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int freeDeliveryMinKobo,  int deliveryFeeKobo,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DeliverySettings() when $default != null:
return $default(_that.id,_that.freeDeliveryMinKobo,_that.deliveryFeeKobo,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliverySettings implements DeliverySettings {
  const _DeliverySettings({required this.id, required this.freeDeliveryMinKobo, required this.deliveryFeeKobo, required this.updatedAt});
  factory _DeliverySettings.fromJson(Map<String, dynamic> json) => _$DeliverySettingsFromJson(json);

@override final  String id;
@override final  int freeDeliveryMinKobo;
@override final  int deliveryFeeKobo;
@override final  String updatedAt;

/// Create a copy of DeliverySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliverySettingsCopyWith<_DeliverySettings> get copyWith => __$DeliverySettingsCopyWithImpl<_DeliverySettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliverySettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliverySettings&&(identical(other.id, id) || other.id == id)&&(identical(other.freeDeliveryMinKobo, freeDeliveryMinKobo) || other.freeDeliveryMinKobo == freeDeliveryMinKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,freeDeliveryMinKobo,deliveryFeeKobo,updatedAt);

@override
String toString() {
  return 'DeliverySettings(id: $id, freeDeliveryMinKobo: $freeDeliveryMinKobo, deliveryFeeKobo: $deliveryFeeKobo, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DeliverySettingsCopyWith<$Res> implements $DeliverySettingsCopyWith<$Res> {
  factory _$DeliverySettingsCopyWith(_DeliverySettings value, $Res Function(_DeliverySettings) _then) = __$DeliverySettingsCopyWithImpl;
@override @useResult
$Res call({
 String id, int freeDeliveryMinKobo, int deliveryFeeKobo, String updatedAt
});




}
/// @nodoc
class __$DeliverySettingsCopyWithImpl<$Res>
    implements _$DeliverySettingsCopyWith<$Res> {
  __$DeliverySettingsCopyWithImpl(this._self, this._then);

  final _DeliverySettings _self;
  final $Res Function(_DeliverySettings) _then;

/// Create a copy of DeliverySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? freeDeliveryMinKobo = null,Object? deliveryFeeKobo = null,Object? updatedAt = null,}) {
  return _then(_DeliverySettings(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,freeDeliveryMinKobo: null == freeDeliveryMinKobo ? _self.freeDeliveryMinKobo : freeDeliveryMinKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UpdateDeliverySettingsRequest {

 int? get freeDeliveryMinKobo; int? get deliveryFeeKobo;
/// Create a copy of UpdateDeliverySettingsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDeliverySettingsRequestCopyWith<UpdateDeliverySettingsRequest> get copyWith => _$UpdateDeliverySettingsRequestCopyWithImpl<UpdateDeliverySettingsRequest>(this as UpdateDeliverySettingsRequest, _$identity);

  /// Serializes this UpdateDeliverySettingsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDeliverySettingsRequest&&(identical(other.freeDeliveryMinKobo, freeDeliveryMinKobo) || other.freeDeliveryMinKobo == freeDeliveryMinKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,freeDeliveryMinKobo,deliveryFeeKobo);

@override
String toString() {
  return 'UpdateDeliverySettingsRequest(freeDeliveryMinKobo: $freeDeliveryMinKobo, deliveryFeeKobo: $deliveryFeeKobo)';
}


}

/// @nodoc
abstract mixin class $UpdateDeliverySettingsRequestCopyWith<$Res>  {
  factory $UpdateDeliverySettingsRequestCopyWith(UpdateDeliverySettingsRequest value, $Res Function(UpdateDeliverySettingsRequest) _then) = _$UpdateDeliverySettingsRequestCopyWithImpl;
@useResult
$Res call({
 int? freeDeliveryMinKobo, int? deliveryFeeKobo
});




}
/// @nodoc
class _$UpdateDeliverySettingsRequestCopyWithImpl<$Res>
    implements $UpdateDeliverySettingsRequestCopyWith<$Res> {
  _$UpdateDeliverySettingsRequestCopyWithImpl(this._self, this._then);

  final UpdateDeliverySettingsRequest _self;
  final $Res Function(UpdateDeliverySettingsRequest) _then;

/// Create a copy of UpdateDeliverySettingsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? freeDeliveryMinKobo = freezed,Object? deliveryFeeKobo = freezed,}) {
  return _then(_self.copyWith(
freeDeliveryMinKobo: freezed == freeDeliveryMinKobo ? _self.freeDeliveryMinKobo : freeDeliveryMinKobo // ignore: cast_nullable_to_non_nullable
as int?,deliveryFeeKobo: freezed == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDeliverySettingsRequest].
extension UpdateDeliverySettingsRequestPatterns on UpdateDeliverySettingsRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDeliverySettingsRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDeliverySettingsRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDeliverySettingsRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDeliverySettingsRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDeliverySettingsRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDeliverySettingsRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? freeDeliveryMinKobo,  int? deliveryFeeKobo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDeliverySettingsRequest() when $default != null:
return $default(_that.freeDeliveryMinKobo,_that.deliveryFeeKobo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? freeDeliveryMinKobo,  int? deliveryFeeKobo)  $default,) {final _that = this;
switch (_that) {
case _UpdateDeliverySettingsRequest():
return $default(_that.freeDeliveryMinKobo,_that.deliveryFeeKobo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? freeDeliveryMinKobo,  int? deliveryFeeKobo)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDeliverySettingsRequest() when $default != null:
return $default(_that.freeDeliveryMinKobo,_that.deliveryFeeKobo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDeliverySettingsRequest implements UpdateDeliverySettingsRequest {
  const _UpdateDeliverySettingsRequest({this.freeDeliveryMinKobo, this.deliveryFeeKobo});
  factory _UpdateDeliverySettingsRequest.fromJson(Map<String, dynamic> json) => _$UpdateDeliverySettingsRequestFromJson(json);

@override final  int? freeDeliveryMinKobo;
@override final  int? deliveryFeeKobo;

/// Create a copy of UpdateDeliverySettingsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDeliverySettingsRequestCopyWith<_UpdateDeliverySettingsRequest> get copyWith => __$UpdateDeliverySettingsRequestCopyWithImpl<_UpdateDeliverySettingsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDeliverySettingsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDeliverySettingsRequest&&(identical(other.freeDeliveryMinKobo, freeDeliveryMinKobo) || other.freeDeliveryMinKobo == freeDeliveryMinKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,freeDeliveryMinKobo,deliveryFeeKobo);

@override
String toString() {
  return 'UpdateDeliverySettingsRequest(freeDeliveryMinKobo: $freeDeliveryMinKobo, deliveryFeeKobo: $deliveryFeeKobo)';
}


}

/// @nodoc
abstract mixin class _$UpdateDeliverySettingsRequestCopyWith<$Res> implements $UpdateDeliverySettingsRequestCopyWith<$Res> {
  factory _$UpdateDeliverySettingsRequestCopyWith(_UpdateDeliverySettingsRequest value, $Res Function(_UpdateDeliverySettingsRequest) _then) = __$UpdateDeliverySettingsRequestCopyWithImpl;
@override @useResult
$Res call({
 int? freeDeliveryMinKobo, int? deliveryFeeKobo
});




}
/// @nodoc
class __$UpdateDeliverySettingsRequestCopyWithImpl<$Res>
    implements _$UpdateDeliverySettingsRequestCopyWith<$Res> {
  __$UpdateDeliverySettingsRequestCopyWithImpl(this._self, this._then);

  final _UpdateDeliverySettingsRequest _self;
  final $Res Function(_UpdateDeliverySettingsRequest) _then;

/// Create a copy of UpdateDeliverySettingsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? freeDeliveryMinKobo = freezed,Object? deliveryFeeKobo = freezed,}) {
  return _then(_UpdateDeliverySettingsRequest(
freeDeliveryMinKobo: freezed == freeDeliveryMinKobo ? _self.freeDeliveryMinKobo : freeDeliveryMinKobo // ignore: cast_nullable_to_non_nullable
as int?,deliveryFeeKobo: freezed == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
