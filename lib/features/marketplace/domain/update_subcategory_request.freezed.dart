// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_subcategory_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSubcategoryRequest {

 String? get name; int? get sortOrder; bool? get isActive;
/// Create a copy of UpdateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSubcategoryRequestCopyWith<UpdateSubcategoryRequest> get copyWith => _$UpdateSubcategoryRequestCopyWithImpl<UpdateSubcategoryRequest>(this as UpdateSubcategoryRequest, _$identity);

  /// Serializes this UpdateSubcategoryRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSubcategoryRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sortOrder,isActive);

@override
String toString() {
  return 'UpdateSubcategoryRequest(name: $name, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $UpdateSubcategoryRequestCopyWith<$Res>  {
  factory $UpdateSubcategoryRequestCopyWith(UpdateSubcategoryRequest value, $Res Function(UpdateSubcategoryRequest) _then) = _$UpdateSubcategoryRequestCopyWithImpl;
@useResult
$Res call({
 String? name, int? sortOrder, bool? isActive
});




}
/// @nodoc
class _$UpdateSubcategoryRequestCopyWithImpl<$Res>
    implements $UpdateSubcategoryRequestCopyWith<$Res> {
  _$UpdateSubcategoryRequestCopyWithImpl(this._self, this._then);

  final UpdateSubcategoryRequest _self;
  final $Res Function(UpdateSubcategoryRequest) _then;

/// Create a copy of UpdateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateSubcategoryRequest].
extension UpdateSubcategoryRequestPatterns on UpdateSubcategoryRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateSubcategoryRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSubcategoryRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateSubcategoryRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateSubcategoryRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateSubcategoryRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateSubcategoryRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  int? sortOrder,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSubcategoryRequest() when $default != null:
return $default(_that.name,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  int? sortOrder,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _UpdateSubcategoryRequest():
return $default(_that.name,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  int? sortOrder,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _UpdateSubcategoryRequest() when $default != null:
return $default(_that.name,_that.sortOrder,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateSubcategoryRequest implements UpdateSubcategoryRequest {
  const _UpdateSubcategoryRequest({this.name, this.sortOrder, this.isActive});
  factory _UpdateSubcategoryRequest.fromJson(Map<String, dynamic> json) => _$UpdateSubcategoryRequestFromJson(json);

@override final  String? name;
@override final  int? sortOrder;
@override final  bool? isActive;

/// Create a copy of UpdateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSubcategoryRequestCopyWith<_UpdateSubcategoryRequest> get copyWith => __$UpdateSubcategoryRequestCopyWithImpl<_UpdateSubcategoryRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateSubcategoryRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSubcategoryRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sortOrder,isActive);

@override
String toString() {
  return 'UpdateSubcategoryRequest(name: $name, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$UpdateSubcategoryRequestCopyWith<$Res> implements $UpdateSubcategoryRequestCopyWith<$Res> {
  factory _$UpdateSubcategoryRequestCopyWith(_UpdateSubcategoryRequest value, $Res Function(_UpdateSubcategoryRequest) _then) = __$UpdateSubcategoryRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name, int? sortOrder, bool? isActive
});




}
/// @nodoc
class __$UpdateSubcategoryRequestCopyWithImpl<$Res>
    implements _$UpdateSubcategoryRequestCopyWith<$Res> {
  __$UpdateSubcategoryRequestCopyWithImpl(this._self, this._then);

  final _UpdateSubcategoryRequest _self;
  final $Res Function(_UpdateSubcategoryRequest) _then;

/// Create a copy of UpdateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_UpdateSubcategoryRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
