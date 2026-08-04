// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_subcategory_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSubcategoryRequest {

 String get categoryId; String get name; int? get sortOrder; bool? get isActive;
/// Create a copy of CreateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSubcategoryRequestCopyWith<CreateSubcategoryRequest> get copyWith => _$CreateSubcategoryRequestCopyWithImpl<CreateSubcategoryRequest>(this as CreateSubcategoryRequest, _$identity);

  /// Serializes this CreateSubcategoryRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSubcategoryRequest&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,name,sortOrder,isActive);

@override
String toString() {
  return 'CreateSubcategoryRequest(categoryId: $categoryId, name: $name, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CreateSubcategoryRequestCopyWith<$Res>  {
  factory $CreateSubcategoryRequestCopyWith(CreateSubcategoryRequest value, $Res Function(CreateSubcategoryRequest) _then) = _$CreateSubcategoryRequestCopyWithImpl;
@useResult
$Res call({
 String categoryId, String name, int? sortOrder, bool? isActive
});




}
/// @nodoc
class _$CreateSubcategoryRequestCopyWithImpl<$Res>
    implements $CreateSubcategoryRequestCopyWith<$Res> {
  _$CreateSubcategoryRequestCopyWithImpl(this._self, this._then);

  final CreateSubcategoryRequest _self;
  final $Res Function(CreateSubcategoryRequest) _then;

/// Create a copy of CreateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? name = null,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSubcategoryRequest].
extension CreateSubcategoryRequestPatterns on CreateSubcategoryRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSubcategoryRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSubcategoryRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSubcategoryRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateSubcategoryRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSubcategoryRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSubcategoryRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String categoryId,  String name,  int? sortOrder,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSubcategoryRequest() when $default != null:
return $default(_that.categoryId,_that.name,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String categoryId,  String name,  int? sortOrder,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _CreateSubcategoryRequest():
return $default(_that.categoryId,_that.name,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String categoryId,  String name,  int? sortOrder,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _CreateSubcategoryRequest() when $default != null:
return $default(_that.categoryId,_that.name,_that.sortOrder,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSubcategoryRequest implements CreateSubcategoryRequest {
  const _CreateSubcategoryRequest({required this.categoryId, required this.name, this.sortOrder, this.isActive});
  factory _CreateSubcategoryRequest.fromJson(Map<String, dynamic> json) => _$CreateSubcategoryRequestFromJson(json);

@override final  String categoryId;
@override final  String name;
@override final  int? sortOrder;
@override final  bool? isActive;

/// Create a copy of CreateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSubcategoryRequestCopyWith<_CreateSubcategoryRequest> get copyWith => __$CreateSubcategoryRequestCopyWithImpl<_CreateSubcategoryRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSubcategoryRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSubcategoryRequest&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,name,sortOrder,isActive);

@override
String toString() {
  return 'CreateSubcategoryRequest(categoryId: $categoryId, name: $name, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CreateSubcategoryRequestCopyWith<$Res> implements $CreateSubcategoryRequestCopyWith<$Res> {
  factory _$CreateSubcategoryRequestCopyWith(_CreateSubcategoryRequest value, $Res Function(_CreateSubcategoryRequest) _then) = __$CreateSubcategoryRequestCopyWithImpl;
@override @useResult
$Res call({
 String categoryId, String name, int? sortOrder, bool? isActive
});




}
/// @nodoc
class __$CreateSubcategoryRequestCopyWithImpl<$Res>
    implements _$CreateSubcategoryRequestCopyWith<$Res> {
  __$CreateSubcategoryRequestCopyWithImpl(this._self, this._then);

  final _CreateSubcategoryRequest _self;
  final $Res Function(_CreateSubcategoryRequest) _then;

/// Create a copy of CreateSubcategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? name = null,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_CreateSubcategoryRequest(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
