// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketplaceBanner {

 String get id; String get badgeLabel; String get title; String get subtitle; String get ctaLabel; String? get ctaRoute; String get gradientStart; String get gradientEnd; int get sortOrder; bool get isActive; String get createdAt; String get updatedAt;
/// Create a copy of MarketplaceBanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceBannerCopyWith<MarketplaceBanner> get copyWith => _$MarketplaceBannerCopyWithImpl<MarketplaceBanner>(this as MarketplaceBanner, _$identity);

  /// Serializes this MarketplaceBanner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.badgeLabel, badgeLabel) || other.badgeLabel == badgeLabel)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.ctaLabel, ctaLabel) || other.ctaLabel == ctaLabel)&&(identical(other.ctaRoute, ctaRoute) || other.ctaRoute == ctaRoute)&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,badgeLabel,title,subtitle,ctaLabel,ctaRoute,gradientStart,gradientEnd,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MarketplaceBanner(id: $id, badgeLabel: $badgeLabel, title: $title, subtitle: $subtitle, ctaLabel: $ctaLabel, ctaRoute: $ctaRoute, gradientStart: $gradientStart, gradientEnd: $gradientEnd, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MarketplaceBannerCopyWith<$Res>  {
  factory $MarketplaceBannerCopyWith(MarketplaceBanner value, $Res Function(MarketplaceBanner) _then) = _$MarketplaceBannerCopyWithImpl;
@useResult
$Res call({
 String id, String badgeLabel, String title, String subtitle, String ctaLabel, String? ctaRoute, String gradientStart, String gradientEnd, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class _$MarketplaceBannerCopyWithImpl<$Res>
    implements $MarketplaceBannerCopyWith<$Res> {
  _$MarketplaceBannerCopyWithImpl(this._self, this._then);

  final MarketplaceBanner _self;
  final $Res Function(MarketplaceBanner) _then;

/// Create a copy of MarketplaceBanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? badgeLabel = null,Object? title = null,Object? subtitle = null,Object? ctaLabel = null,Object? ctaRoute = freezed,Object? gradientStart = null,Object? gradientEnd = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,badgeLabel: null == badgeLabel ? _self.badgeLabel : badgeLabel // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,ctaLabel: null == ctaLabel ? _self.ctaLabel : ctaLabel // ignore: cast_nullable_to_non_nullable
as String,ctaRoute: freezed == ctaRoute ? _self.ctaRoute : ctaRoute // ignore: cast_nullable_to_non_nullable
as String?,gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketplaceBanner].
extension MarketplaceBannerPatterns on MarketplaceBanner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceBanner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceBanner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceBanner value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceBanner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceBanner value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceBanner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String badgeLabel,  String title,  String subtitle,  String ctaLabel,  String? ctaRoute,  String gradientStart,  String gradientEnd,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceBanner() when $default != null:
return $default(_that.id,_that.badgeLabel,_that.title,_that.subtitle,_that.ctaLabel,_that.ctaRoute,_that.gradientStart,_that.gradientEnd,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String badgeLabel,  String title,  String subtitle,  String ctaLabel,  String? ctaRoute,  String gradientStart,  String gradientEnd,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceBanner():
return $default(_that.id,_that.badgeLabel,_that.title,_that.subtitle,_that.ctaLabel,_that.ctaRoute,_that.gradientStart,_that.gradientEnd,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String badgeLabel,  String title,  String subtitle,  String ctaLabel,  String? ctaRoute,  String gradientStart,  String gradientEnd,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceBanner() when $default != null:
return $default(_that.id,_that.badgeLabel,_that.title,_that.subtitle,_that.ctaLabel,_that.ctaRoute,_that.gradientStart,_that.gradientEnd,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketplaceBanner implements MarketplaceBanner {
  const _MarketplaceBanner({required this.id, required this.badgeLabel, required this.title, required this.subtitle, required this.ctaLabel, this.ctaRoute, required this.gradientStart, required this.gradientEnd, required this.sortOrder, required this.isActive, required this.createdAt, required this.updatedAt});
  factory _MarketplaceBanner.fromJson(Map<String, dynamic> json) => _$MarketplaceBannerFromJson(json);

@override final  String id;
@override final  String badgeLabel;
@override final  String title;
@override final  String subtitle;
@override final  String ctaLabel;
@override final  String? ctaRoute;
@override final  String gradientStart;
@override final  String gradientEnd;
@override final  int sortOrder;
@override final  bool isActive;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of MarketplaceBanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceBannerCopyWith<_MarketplaceBanner> get copyWith => __$MarketplaceBannerCopyWithImpl<_MarketplaceBanner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketplaceBannerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.badgeLabel, badgeLabel) || other.badgeLabel == badgeLabel)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.ctaLabel, ctaLabel) || other.ctaLabel == ctaLabel)&&(identical(other.ctaRoute, ctaRoute) || other.ctaRoute == ctaRoute)&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,badgeLabel,title,subtitle,ctaLabel,ctaRoute,gradientStart,gradientEnd,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MarketplaceBanner(id: $id, badgeLabel: $badgeLabel, title: $title, subtitle: $subtitle, ctaLabel: $ctaLabel, ctaRoute: $ctaRoute, gradientStart: $gradientStart, gradientEnd: $gradientEnd, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceBannerCopyWith<$Res> implements $MarketplaceBannerCopyWith<$Res> {
  factory _$MarketplaceBannerCopyWith(_MarketplaceBanner value, $Res Function(_MarketplaceBanner) _then) = __$MarketplaceBannerCopyWithImpl;
@override @useResult
$Res call({
 String id, String badgeLabel, String title, String subtitle, String ctaLabel, String? ctaRoute, String gradientStart, String gradientEnd, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class __$MarketplaceBannerCopyWithImpl<$Res>
    implements _$MarketplaceBannerCopyWith<$Res> {
  __$MarketplaceBannerCopyWithImpl(this._self, this._then);

  final _MarketplaceBanner _self;
  final $Res Function(_MarketplaceBanner) _then;

/// Create a copy of MarketplaceBanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? badgeLabel = null,Object? title = null,Object? subtitle = null,Object? ctaLabel = null,Object? ctaRoute = freezed,Object? gradientStart = null,Object? gradientEnd = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MarketplaceBanner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,badgeLabel: null == badgeLabel ? _self.badgeLabel : badgeLabel // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,ctaLabel: null == ctaLabel ? _self.ctaLabel : ctaLabel // ignore: cast_nullable_to_non_nullable
as String,ctaRoute: freezed == ctaRoute ? _self.ctaRoute : ctaRoute // ignore: cast_nullable_to_non_nullable
as String?,gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
