// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_distribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RatingDistribution {

 int get star1; int get star2; int get star3; int get star4; int get star5;
/// Create a copy of RatingDistribution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingDistributionCopyWith<RatingDistribution> get copyWith => _$RatingDistributionCopyWithImpl<RatingDistribution>(this as RatingDistribution, _$identity);

  /// Serializes this RatingDistribution to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingDistribution&&(identical(other.star1, star1) || other.star1 == star1)&&(identical(other.star2, star2) || other.star2 == star2)&&(identical(other.star3, star3) || other.star3 == star3)&&(identical(other.star4, star4) || other.star4 == star4)&&(identical(other.star5, star5) || other.star5 == star5));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,star1,star2,star3,star4,star5);

@override
String toString() {
  return 'RatingDistribution(star1: $star1, star2: $star2, star3: $star3, star4: $star4, star5: $star5)';
}


}

/// @nodoc
abstract mixin class $RatingDistributionCopyWith<$Res>  {
  factory $RatingDistributionCopyWith(RatingDistribution value, $Res Function(RatingDistribution) _then) = _$RatingDistributionCopyWithImpl;
@useResult
$Res call({
 int star1, int star2, int star3, int star4, int star5
});




}
/// @nodoc
class _$RatingDistributionCopyWithImpl<$Res>
    implements $RatingDistributionCopyWith<$Res> {
  _$RatingDistributionCopyWithImpl(this._self, this._then);

  final RatingDistribution _self;
  final $Res Function(RatingDistribution) _then;

/// Create a copy of RatingDistribution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? star1 = null,Object? star2 = null,Object? star3 = null,Object? star4 = null,Object? star5 = null,}) {
  return _then(_self.copyWith(
star1: null == star1 ? _self.star1 : star1 // ignore: cast_nullable_to_non_nullable
as int,star2: null == star2 ? _self.star2 : star2 // ignore: cast_nullable_to_non_nullable
as int,star3: null == star3 ? _self.star3 : star3 // ignore: cast_nullable_to_non_nullable
as int,star4: null == star4 ? _self.star4 : star4 // ignore: cast_nullable_to_non_nullable
as int,star5: null == star5 ? _self.star5 : star5 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RatingDistribution].
extension RatingDistributionPatterns on RatingDistribution {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RatingDistribution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatingDistribution() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RatingDistribution value)  $default,){
final _that = this;
switch (_that) {
case _RatingDistribution():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RatingDistribution value)?  $default,){
final _that = this;
switch (_that) {
case _RatingDistribution() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int star1,  int star2,  int star3,  int star4,  int star5)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatingDistribution() when $default != null:
return $default(_that.star1,_that.star2,_that.star3,_that.star4,_that.star5);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int star1,  int star2,  int star3,  int star4,  int star5)  $default,) {final _that = this;
switch (_that) {
case _RatingDistribution():
return $default(_that.star1,_that.star2,_that.star3,_that.star4,_that.star5);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int star1,  int star2,  int star3,  int star4,  int star5)?  $default,) {final _that = this;
switch (_that) {
case _RatingDistribution() when $default != null:
return $default(_that.star1,_that.star2,_that.star3,_that.star4,_that.star5);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RatingDistribution implements RatingDistribution {
  const _RatingDistribution({this.star1 = 0, this.star2 = 0, this.star3 = 0, this.star4 = 0, this.star5 = 0});
  factory _RatingDistribution.fromJson(Map<String, dynamic> json) => _$RatingDistributionFromJson(json);

@override@JsonKey() final  int star1;
@override@JsonKey() final  int star2;
@override@JsonKey() final  int star3;
@override@JsonKey() final  int star4;
@override@JsonKey() final  int star5;

/// Create a copy of RatingDistribution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingDistributionCopyWith<_RatingDistribution> get copyWith => __$RatingDistributionCopyWithImpl<_RatingDistribution>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatingDistributionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingDistribution&&(identical(other.star1, star1) || other.star1 == star1)&&(identical(other.star2, star2) || other.star2 == star2)&&(identical(other.star3, star3) || other.star3 == star3)&&(identical(other.star4, star4) || other.star4 == star4)&&(identical(other.star5, star5) || other.star5 == star5));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,star1,star2,star3,star4,star5);

@override
String toString() {
  return 'RatingDistribution(star1: $star1, star2: $star2, star3: $star3, star4: $star4, star5: $star5)';
}


}

/// @nodoc
abstract mixin class _$RatingDistributionCopyWith<$Res> implements $RatingDistributionCopyWith<$Res> {
  factory _$RatingDistributionCopyWith(_RatingDistribution value, $Res Function(_RatingDistribution) _then) = __$RatingDistributionCopyWithImpl;
@override @useResult
$Res call({
 int star1, int star2, int star3, int star4, int star5
});




}
/// @nodoc
class __$RatingDistributionCopyWithImpl<$Res>
    implements _$RatingDistributionCopyWith<$Res> {
  __$RatingDistributionCopyWithImpl(this._self, this._then);

  final _RatingDistribution _self;
  final $Res Function(_RatingDistribution) _then;

/// Create a copy of RatingDistribution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? star1 = null,Object? star2 = null,Object? star3 = null,Object? star4 = null,Object? star5 = null,}) {
  return _then(_RatingDistribution(
star1: null == star1 ? _self.star1 : star1 // ignore: cast_nullable_to_non_nullable
as int,star2: null == star2 ? _self.star2 : star2 // ignore: cast_nullable_to_non_nullable
as int,star3: null == star3 ? _self.star3 : star3 // ignore: cast_nullable_to_non_nullable
as int,star4: null == star4 ? _self.star4 : star4 // ignore: cast_nullable_to_non_nullable
as int,star5: null == star5 ? _self.star5 : star5 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
