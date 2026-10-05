// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'perfect_for_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PerfectForItem {

 String get title; String get description; String get imageUrl;
/// Create a copy of PerfectForItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerfectForItemCopyWith<PerfectForItem> get copyWith => _$PerfectForItemCopyWithImpl<PerfectForItem>(this as PerfectForItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PerfectForItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerfectForItem&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}


@override
int get hashCode {
  final _this = this as PerfectForItem;
  return Object.hash(runtimeType,_this.title,_this.description,_this.imageUrl);
}

@override
String toString() {
  final _this = this as PerfectForItem;
  return 'PerfectForItem(title: ${_this.title}, description: ${_this.description}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $PerfectForItemCopyWith<$Res>  {
  factory $PerfectForItemCopyWith(PerfectForItem value, $Res Function(PerfectForItem) _then) = _$PerfectForItemCopyWithImpl;
@useResult
$Res call({
 String title, String description, String imageUrl
});




}
/// @nodoc
class _$PerfectForItemCopyWithImpl<$Res>
    implements $PerfectForItemCopyWith<$Res> {
  _$PerfectForItemCopyWithImpl(this._self, this._then);

  final PerfectForItem _self;
  final $Res Function(PerfectForItem) _then;

/// Create a copy of PerfectForItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? imageUrl = null,}) {
  return _then(PerfectForItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PerfectForItem].
extension PerfectForItemPatterns on PerfectForItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerfectForItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerfectForItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerfectForItem value)  $default,){
final _that = this;
switch (_that) {
case _PerfectForItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerfectForItem value)?  $default,){
final _that = this;
switch (_that) {
case _PerfectForItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerfectForItem() when $default != null:
return $default(_that.title,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _PerfectForItem():
return $default(_that.title,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _PerfectForItem() when $default != null:
return $default(_that.title,_that.description,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _PerfectForItem implements PerfectForItem {
  const _PerfectForItem({required this.title, required this.description, required this.imageUrl});
  

@override final  String title;
@override final  String description;
@override final  String imageUrl;

/// Create a copy of PerfectForItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerfectForItemCopyWith<_PerfectForItem> get copyWith => __$PerfectForItemCopyWithImpl<_PerfectForItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerfectForItem&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title,description,imageUrl);
}

@override
String toString() {
    return 'PerfectForItem(title: $title, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$PerfectForItemCopyWith<$Res> implements $PerfectForItemCopyWith<$Res> {
  factory _$PerfectForItemCopyWith(_PerfectForItem value, $Res Function(_PerfectForItem) _then) = __$PerfectForItemCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String imageUrl
});




}
/// @nodoc
class __$PerfectForItemCopyWithImpl<$Res>
    implements _$PerfectForItemCopyWith<$Res> {
  __$PerfectForItemCopyWithImpl(this._self, this._then);

  final _PerfectForItem _self;
  final $Res Function(_PerfectForItem) _then;

/// Create a copy of PerfectForItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? imageUrl = null,}) {
  return _then(_PerfectForItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
