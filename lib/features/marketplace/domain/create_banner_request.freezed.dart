// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_banner_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateBannerRequest {

 String get badgeLabel; String get title; String get subtitle; String get ctaLabel; String? get ctaRoute; String get gradientStart; String get gradientEnd; int? get sortOrder; bool? get isActive;
/// Create a copy of CreateBannerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBannerRequestCopyWith<CreateBannerRequest> get copyWith => _$CreateBannerRequestCopyWithImpl<CreateBannerRequest>(this as CreateBannerRequest, _$identity);

  /// Serializes this CreateBannerRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBannerRequest&&(identical(other.badgeLabel, badgeLabel) || other.badgeLabel == badgeLabel)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.ctaLabel, ctaLabel) || other.ctaLabel == ctaLabel)&&(identical(other.ctaRoute, ctaRoute) || other.ctaRoute == ctaRoute)&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,badgeLabel,title,subtitle,ctaLabel,ctaRoute,gradientStart,gradientEnd,sortOrder,isActive);

@override
String toString() {
  return 'CreateBannerRequest(badgeLabel: $badgeLabel, title: $title, subtitle: $subtitle, ctaLabel: $ctaLabel, ctaRoute: $ctaRoute, gradientStart: $gradientStart, gradientEnd: $gradientEnd, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CreateBannerRequestCopyWith<$Res>  {
  factory $CreateBannerRequestCopyWith(CreateBannerRequest value, $Res Function(CreateBannerRequest) _then) = _$CreateBannerRequestCopyWithImpl;
@useResult
$Res call({
 String badgeLabel, String title, String subtitle, String ctaLabel, String? ctaRoute, String gradientStart, String gradientEnd, int? sortOrder, bool? isActive
});




}
/// @nodoc
class _$CreateBannerRequestCopyWithImpl<$Res>
    implements $CreateBannerRequestCopyWith<$Res> {
  _$CreateBannerRequestCopyWithImpl(this._self, this._then);

  final CreateBannerRequest _self;
  final $Res Function(CreateBannerRequest) _then;

/// Create a copy of CreateBannerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? badgeLabel = null,Object? title = null,Object? subtitle = null,Object? ctaLabel = null,Object? ctaRoute = freezed,Object? gradientStart = null,Object? gradientEnd = null,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
badgeLabel: null == badgeLabel ? _self.badgeLabel : badgeLabel // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,ctaLabel: null == ctaLabel ? _self.ctaLabel : ctaLabel // ignore: cast_nullable_to_non_nullable
as String,ctaRoute: freezed == ctaRoute ? _self.ctaRoute : ctaRoute // ignore: cast_nullable_to_non_nullable
as String?,gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateBannerRequest].
extension CreateBannerRequestPatterns on CreateBannerRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBannerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBannerRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBannerRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateBannerRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBannerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBannerRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String badgeLabel,  String title,  String subtitle,  String ctaLabel,  String? ctaRoute,  String gradientStart,  String gradientEnd,  int? sortOrder,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBannerRequest() when $default != null:
return $default(_that.badgeLabel,_that.title,_that.subtitle,_that.ctaLabel,_that.ctaRoute,_that.gradientStart,_that.gradientEnd,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String badgeLabel,  String title,  String subtitle,  String ctaLabel,  String? ctaRoute,  String gradientStart,  String gradientEnd,  int? sortOrder,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _CreateBannerRequest():
return $default(_that.badgeLabel,_that.title,_that.subtitle,_that.ctaLabel,_that.ctaRoute,_that.gradientStart,_that.gradientEnd,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String badgeLabel,  String title,  String subtitle,  String ctaLabel,  String? ctaRoute,  String gradientStart,  String gradientEnd,  int? sortOrder,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _CreateBannerRequest() when $default != null:
return $default(_that.badgeLabel,_that.title,_that.subtitle,_that.ctaLabel,_that.ctaRoute,_that.gradientStart,_that.gradientEnd,_that.sortOrder,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBannerRequest implements CreateBannerRequest {
  const _CreateBannerRequest({required this.badgeLabel, required this.title, required this.subtitle, required this.ctaLabel, this.ctaRoute, required this.gradientStart, required this.gradientEnd, this.sortOrder, this.isActive});
  factory _CreateBannerRequest.fromJson(Map<String, dynamic> json) => _$CreateBannerRequestFromJson(json);

@override final  String badgeLabel;
@override final  String title;
@override final  String subtitle;
@override final  String ctaLabel;
@override final  String? ctaRoute;
@override final  String gradientStart;
@override final  String gradientEnd;
@override final  int? sortOrder;
@override final  bool? isActive;

/// Create a copy of CreateBannerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBannerRequestCopyWith<_CreateBannerRequest> get copyWith => __$CreateBannerRequestCopyWithImpl<_CreateBannerRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBannerRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBannerRequest&&(identical(other.badgeLabel, badgeLabel) || other.badgeLabel == badgeLabel)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.ctaLabel, ctaLabel) || other.ctaLabel == ctaLabel)&&(identical(other.ctaRoute, ctaRoute) || other.ctaRoute == ctaRoute)&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,badgeLabel,title,subtitle,ctaLabel,ctaRoute,gradientStart,gradientEnd,sortOrder,isActive);

@override
String toString() {
  return 'CreateBannerRequest(badgeLabel: $badgeLabel, title: $title, subtitle: $subtitle, ctaLabel: $ctaLabel, ctaRoute: $ctaRoute, gradientStart: $gradientStart, gradientEnd: $gradientEnd, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CreateBannerRequestCopyWith<$Res> implements $CreateBannerRequestCopyWith<$Res> {
  factory _$CreateBannerRequestCopyWith(_CreateBannerRequest value, $Res Function(_CreateBannerRequest) _then) = __$CreateBannerRequestCopyWithImpl;
@override @useResult
$Res call({
 String badgeLabel, String title, String subtitle, String ctaLabel, String? ctaRoute, String gradientStart, String gradientEnd, int? sortOrder, bool? isActive
});




}
/// @nodoc
class __$CreateBannerRequestCopyWithImpl<$Res>
    implements _$CreateBannerRequestCopyWith<$Res> {
  __$CreateBannerRequestCopyWithImpl(this._self, this._then);

  final _CreateBannerRequest _self;
  final $Res Function(_CreateBannerRequest) _then;

/// Create a copy of CreateBannerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? badgeLabel = null,Object? title = null,Object? subtitle = null,Object? ctaLabel = null,Object? ctaRoute = freezed,Object? gradientStart = null,Object? gradientEnd = null,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_CreateBannerRequest(
badgeLabel: null == badgeLabel ? _self.badgeLabel : badgeLabel // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,ctaLabel: null == ctaLabel ? _self.ctaLabel : ctaLabel // ignore: cast_nullable_to_non_nullable
as String,ctaRoute: freezed == ctaRoute ? _self.ctaRoute : ctaRoute // ignore: cast_nullable_to_non_nullable
as String?,gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
