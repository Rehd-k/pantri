// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketplaceCategory {

 String get id; String get name; String get imageUrl; String get accentColor; int get sortOrder; bool get isActive; String get createdAt; String get updatedAt;
/// Create a copy of MarketplaceCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceCategoryCopyWith<MarketplaceCategory> get copyWith => _$MarketplaceCategoryCopyWithImpl<MarketplaceCategory>(this as MarketplaceCategory, _$identity);

  /// Serializes this MarketplaceCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.accentColor, accentColor) || other.accentColor == accentColor)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,accentColor,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MarketplaceCategory(id: $id, name: $name, imageUrl: $imageUrl, accentColor: $accentColor, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MarketplaceCategoryCopyWith<$Res>  {
  factory $MarketplaceCategoryCopyWith(MarketplaceCategory value, $Res Function(MarketplaceCategory) _then) = _$MarketplaceCategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, String accentColor, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class _$MarketplaceCategoryCopyWithImpl<$Res>
    implements $MarketplaceCategoryCopyWith<$Res> {
  _$MarketplaceCategoryCopyWithImpl(this._self, this._then);

  final MarketplaceCategory _self;
  final $Res Function(MarketplaceCategory) _then;

/// Create a copy of MarketplaceCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? accentColor = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,accentColor: null == accentColor ? _self.accentColor : accentColor // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceCategory].
extension MarketplaceCategoryPatterns on MarketplaceCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceCategory value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceCategory value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String accentColor,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceCategory() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.accentColor,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  String accentColor,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceCategory():
return $default(_that.id,_that.name,_that.imageUrl,_that.accentColor,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imageUrl,  String accentColor,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceCategory() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.accentColor,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketplaceCategory implements MarketplaceCategory {
  const _MarketplaceCategory({required this.id, required this.name, required this.imageUrl, required this.accentColor, required this.sortOrder, required this.isActive, required this.createdAt, required this.updatedAt});
  factory _MarketplaceCategory.fromJson(Map<String, dynamic> json) => _$MarketplaceCategoryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  String accentColor;
@override final  int sortOrder;
@override final  bool isActive;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of MarketplaceCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceCategoryCopyWith<_MarketplaceCategory> get copyWith => __$MarketplaceCategoryCopyWithImpl<_MarketplaceCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketplaceCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.accentColor, accentColor) || other.accentColor == accentColor)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,accentColor,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MarketplaceCategory(id: $id, name: $name, imageUrl: $imageUrl, accentColor: $accentColor, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceCategoryCopyWith<$Res> implements $MarketplaceCategoryCopyWith<$Res> {
  factory _$MarketplaceCategoryCopyWith(_MarketplaceCategory value, $Res Function(_MarketplaceCategory) _then) = __$MarketplaceCategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, String accentColor, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class __$MarketplaceCategoryCopyWithImpl<$Res>
    implements _$MarketplaceCategoryCopyWith<$Res> {
  __$MarketplaceCategoryCopyWithImpl(this._self, this._then);

  final _MarketplaceCategory _self;
  final $Res Function(_MarketplaceCategory) _then;

/// Create a copy of MarketplaceCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? accentColor = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MarketplaceCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,accentColor: null == accentColor ? _self.accentColor : accentColor // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
