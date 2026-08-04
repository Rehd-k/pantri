// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_subcategory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketplaceSubcategory {

 String get id; String get categoryId; String get name; int get sortOrder; bool get isActive; String get createdAt; String get updatedAt;
/// Create a copy of MarketplaceSubcategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceSubcategoryCopyWith<MarketplaceSubcategory> get copyWith => _$MarketplaceSubcategoryCopyWithImpl<MarketplaceSubcategory>(this as MarketplaceSubcategory, _$identity);

  /// Serializes this MarketplaceSubcategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceSubcategory&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MarketplaceSubcategory(id: $id, categoryId: $categoryId, name: $name, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MarketplaceSubcategoryCopyWith<$Res>  {
  factory $MarketplaceSubcategoryCopyWith(MarketplaceSubcategory value, $Res Function(MarketplaceSubcategory) _then) = _$MarketplaceSubcategoryCopyWithImpl;
@useResult
$Res call({
 String id, String categoryId, String name, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class _$MarketplaceSubcategoryCopyWithImpl<$Res>
    implements $MarketplaceSubcategoryCopyWith<$Res> {
  _$MarketplaceSubcategoryCopyWithImpl(this._self, this._then);

  final MarketplaceSubcategory _self;
  final $Res Function(MarketplaceSubcategory) _then;

/// Create a copy of MarketplaceSubcategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceSubcategory].
extension MarketplaceSubcategoryPatterns on MarketplaceSubcategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceSubcategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceSubcategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceSubcategory value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceSubcategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceSubcategory value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceSubcategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String categoryId,  String name,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceSubcategory() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String categoryId,  String name,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceSubcategory():
return $default(_that.id,_that.categoryId,_that.name,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String categoryId,  String name,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceSubcategory() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketplaceSubcategory implements MarketplaceSubcategory {
  const _MarketplaceSubcategory({required this.id, required this.categoryId, required this.name, required this.sortOrder, required this.isActive, required this.createdAt, required this.updatedAt});
  factory _MarketplaceSubcategory.fromJson(Map<String, dynamic> json) => _$MarketplaceSubcategoryFromJson(json);

@override final  String id;
@override final  String categoryId;
@override final  String name;
@override final  int sortOrder;
@override final  bool isActive;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of MarketplaceSubcategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceSubcategoryCopyWith<_MarketplaceSubcategory> get copyWith => __$MarketplaceSubcategoryCopyWithImpl<_MarketplaceSubcategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketplaceSubcategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceSubcategory&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MarketplaceSubcategory(id: $id, categoryId: $categoryId, name: $name, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceSubcategoryCopyWith<$Res> implements $MarketplaceSubcategoryCopyWith<$Res> {
  factory _$MarketplaceSubcategoryCopyWith(_MarketplaceSubcategory value, $Res Function(_MarketplaceSubcategory) _then) = __$MarketplaceSubcategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String categoryId, String name, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class __$MarketplaceSubcategoryCopyWithImpl<$Res>
    implements _$MarketplaceSubcategoryCopyWith<$Res> {
  __$MarketplaceSubcategoryCopyWithImpl(this._self, this._then);

  final _MarketplaceSubcategory _self;
  final $Res Function(_MarketplaceSubcategory) _then;

/// Create a copy of MarketplaceSubcategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MarketplaceSubcategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
