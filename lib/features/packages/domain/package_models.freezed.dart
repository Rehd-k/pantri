// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiscountTier {

 String get id; String get label; int get minSpendKobo; int get discountPercent; int get sortOrder; bool get isActive;
/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscountTierCopyWith<DiscountTier> get copyWith => _$DiscountTierCopyWithImpl<DiscountTier>(this as DiscountTier, _$identity);

  /// Serializes this DiscountTier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscountTier&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.minSpendKobo, minSpendKobo) || other.minSpendKobo == minSpendKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,minSpendKobo,discountPercent,sortOrder,isActive);

@override
String toString() {
  return 'DiscountTier(id: $id, label: $label, minSpendKobo: $minSpendKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $DiscountTierCopyWith<$Res>  {
  factory $DiscountTierCopyWith(DiscountTier value, $Res Function(DiscountTier) _then) = _$DiscountTierCopyWithImpl;
@useResult
$Res call({
 String id, String label, int minSpendKobo, int discountPercent, int sortOrder, bool isActive
});




}
/// @nodoc
class _$DiscountTierCopyWithImpl<$Res>
    implements $DiscountTierCopyWith<$Res> {
  _$DiscountTierCopyWithImpl(this._self, this._then);

  final DiscountTier _self;
  final $Res Function(DiscountTier) _then;

/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? minSpendKobo = null,Object? discountPercent = null,Object? sortOrder = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,minSpendKobo: null == minSpendKobo ? _self.minSpendKobo : minSpendKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DiscountTier].
extension DiscountTierPatterns on DiscountTier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscountTier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscountTier value)  $default,){
final _that = this;
switch (_that) {
case _DiscountTier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscountTier value)?  $default,){
final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  int minSpendKobo,  int discountPercent,  int sortOrder,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
return $default(_that.id,_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  int minSpendKobo,  int discountPercent,  int sortOrder,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _DiscountTier():
return $default(_that.id,_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  int minSpendKobo,  int discountPercent,  int sortOrder,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _DiscountTier() when $default != null:
return $default(_that.id,_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiscountTier implements DiscountTier {
  const _DiscountTier({required this.id, required this.label, required this.minSpendKobo, required this.discountPercent, required this.sortOrder, required this.isActive});
  factory _DiscountTier.fromJson(Map<String, dynamic> json) => _$DiscountTierFromJson(json);

@override final  String id;
@override final  String label;
@override final  int minSpendKobo;
@override final  int discountPercent;
@override final  int sortOrder;
@override final  bool isActive;

/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscountTierCopyWith<_DiscountTier> get copyWith => __$DiscountTierCopyWithImpl<_DiscountTier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscountTierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscountTier&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.minSpendKobo, minSpendKobo) || other.minSpendKobo == minSpendKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,minSpendKobo,discountPercent,sortOrder,isActive);

@override
String toString() {
  return 'DiscountTier(id: $id, label: $label, minSpendKobo: $minSpendKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$DiscountTierCopyWith<$Res> implements $DiscountTierCopyWith<$Res> {
  factory _$DiscountTierCopyWith(_DiscountTier value, $Res Function(_DiscountTier) _then) = __$DiscountTierCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, int minSpendKobo, int discountPercent, int sortOrder, bool isActive
});




}
/// @nodoc
class __$DiscountTierCopyWithImpl<$Res>
    implements _$DiscountTierCopyWith<$Res> {
  __$DiscountTierCopyWithImpl(this._self, this._then);

  final _DiscountTier _self;
  final $Res Function(_DiscountTier) _then;

/// Create a copy of DiscountTier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? minSpendKobo = null,Object? discountPercent = null,Object? sortOrder = null,Object? isActive = null,}) {
  return _then(_DiscountTier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,minSpendKobo: null == minSpendKobo ? _self.minSpendKobo : minSpendKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PackagePricing {

 int get wholesaleSubtotalKobo; int get retailSubtotalKobo; int get discountPercent; int get savingsKobo; int get totalKobo; DiscountTier? get appliedTier; DiscountTier? get nextTier; double get nextTierProgress; int get nextTierRemainingKobo;
/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackagePricingCopyWith<PackagePricing> get copyWith => _$PackagePricingCopyWithImpl<PackagePricing>(this as PackagePricing, _$identity);

  /// Serializes this PackagePricing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackagePricing&&(identical(other.wholesaleSubtotalKobo, wholesaleSubtotalKobo) || other.wholesaleSubtotalKobo == wholesaleSubtotalKobo)&&(identical(other.retailSubtotalKobo, retailSubtotalKobo) || other.retailSubtotalKobo == retailSubtotalKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.savingsKobo, savingsKobo) || other.savingsKobo == savingsKobo)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.appliedTier, appliedTier) || other.appliedTier == appliedTier)&&(identical(other.nextTier, nextTier) || other.nextTier == nextTier)&&(identical(other.nextTierProgress, nextTierProgress) || other.nextTierProgress == nextTierProgress)&&(identical(other.nextTierRemainingKobo, nextTierRemainingKobo) || other.nextTierRemainingKobo == nextTierRemainingKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wholesaleSubtotalKobo,retailSubtotalKobo,discountPercent,savingsKobo,totalKobo,appliedTier,nextTier,nextTierProgress,nextTierRemainingKobo);

@override
String toString() {
  return 'PackagePricing(wholesaleSubtotalKobo: $wholesaleSubtotalKobo, retailSubtotalKobo: $retailSubtotalKobo, discountPercent: $discountPercent, savingsKobo: $savingsKobo, totalKobo: $totalKobo, appliedTier: $appliedTier, nextTier: $nextTier, nextTierProgress: $nextTierProgress, nextTierRemainingKobo: $nextTierRemainingKobo)';
}


}

/// @nodoc
abstract mixin class $PackagePricingCopyWith<$Res>  {
  factory $PackagePricingCopyWith(PackagePricing value, $Res Function(PackagePricing) _then) = _$PackagePricingCopyWithImpl;
@useResult
$Res call({
 int wholesaleSubtotalKobo, int retailSubtotalKobo, int discountPercent, int savingsKobo, int totalKobo, DiscountTier? appliedTier, DiscountTier? nextTier, double nextTierProgress, int nextTierRemainingKobo
});


$DiscountTierCopyWith<$Res>? get appliedTier;$DiscountTierCopyWith<$Res>? get nextTier;

}
/// @nodoc
class _$PackagePricingCopyWithImpl<$Res>
    implements $PackagePricingCopyWith<$Res> {
  _$PackagePricingCopyWithImpl(this._self, this._then);

  final PackagePricing _self;
  final $Res Function(PackagePricing) _then;

/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wholesaleSubtotalKobo = null,Object? retailSubtotalKobo = null,Object? discountPercent = null,Object? savingsKobo = null,Object? totalKobo = null,Object? appliedTier = freezed,Object? nextTier = freezed,Object? nextTierProgress = null,Object? nextTierRemainingKobo = null,}) {
  return _then(_self.copyWith(
wholesaleSubtotalKobo: null == wholesaleSubtotalKobo ? _self.wholesaleSubtotalKobo : wholesaleSubtotalKobo // ignore: cast_nullable_to_non_nullable
as int,retailSubtotalKobo: null == retailSubtotalKobo ? _self.retailSubtotalKobo : retailSubtotalKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,savingsKobo: null == savingsKobo ? _self.savingsKobo : savingsKobo // ignore: cast_nullable_to_non_nullable
as int,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,appliedTier: freezed == appliedTier ? _self.appliedTier : appliedTier // ignore: cast_nullable_to_non_nullable
as DiscountTier?,nextTier: freezed == nextTier ? _self.nextTier : nextTier // ignore: cast_nullable_to_non_nullable
as DiscountTier?,nextTierProgress: null == nextTierProgress ? _self.nextTierProgress : nextTierProgress // ignore: cast_nullable_to_non_nullable
as double,nextTierRemainingKobo: null == nextTierRemainingKobo ? _self.nextTierRemainingKobo : nextTierRemainingKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscountTierCopyWith<$Res>? get appliedTier {
    if (_self.appliedTier == null) {
    return null;
  }

  return $DiscountTierCopyWith<$Res>(_self.appliedTier!, (value) {
    return _then(_self.copyWith(appliedTier: value));
  });
}/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscountTierCopyWith<$Res>? get nextTier {
    if (_self.nextTier == null) {
    return null;
  }

  return $DiscountTierCopyWith<$Res>(_self.nextTier!, (value) {
    return _then(_self.copyWith(nextTier: value));
  });
}
}


/// Adds pattern-matching-related methods to [PackagePricing].
extension PackagePricingPatterns on PackagePricing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackagePricing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackagePricing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackagePricing value)  $default,){
final _that = this;
switch (_that) {
case _PackagePricing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackagePricing value)?  $default,){
final _that = this;
switch (_that) {
case _PackagePricing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int wholesaleSubtotalKobo,  int retailSubtotalKobo,  int discountPercent,  int savingsKobo,  int totalKobo,  DiscountTier? appliedTier,  DiscountTier? nextTier,  double nextTierProgress,  int nextTierRemainingKobo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackagePricing() when $default != null:
return $default(_that.wholesaleSubtotalKobo,_that.retailSubtotalKobo,_that.discountPercent,_that.savingsKobo,_that.totalKobo,_that.appliedTier,_that.nextTier,_that.nextTierProgress,_that.nextTierRemainingKobo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int wholesaleSubtotalKobo,  int retailSubtotalKobo,  int discountPercent,  int savingsKobo,  int totalKobo,  DiscountTier? appliedTier,  DiscountTier? nextTier,  double nextTierProgress,  int nextTierRemainingKobo)  $default,) {final _that = this;
switch (_that) {
case _PackagePricing():
return $default(_that.wholesaleSubtotalKobo,_that.retailSubtotalKobo,_that.discountPercent,_that.savingsKobo,_that.totalKobo,_that.appliedTier,_that.nextTier,_that.nextTierProgress,_that.nextTierRemainingKobo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int wholesaleSubtotalKobo,  int retailSubtotalKobo,  int discountPercent,  int savingsKobo,  int totalKobo,  DiscountTier? appliedTier,  DiscountTier? nextTier,  double nextTierProgress,  int nextTierRemainingKobo)?  $default,) {final _that = this;
switch (_that) {
case _PackagePricing() when $default != null:
return $default(_that.wholesaleSubtotalKobo,_that.retailSubtotalKobo,_that.discountPercent,_that.savingsKobo,_that.totalKobo,_that.appliedTier,_that.nextTier,_that.nextTierProgress,_that.nextTierRemainingKobo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackagePricing implements PackagePricing {
  const _PackagePricing({required this.wholesaleSubtotalKobo, required this.retailSubtotalKobo, required this.discountPercent, required this.savingsKobo, required this.totalKobo, this.appliedTier, this.nextTier, this.nextTierProgress = 1.0, this.nextTierRemainingKobo = 0});
  factory _PackagePricing.fromJson(Map<String, dynamic> json) => _$PackagePricingFromJson(json);

@override final  int wholesaleSubtotalKobo;
@override final  int retailSubtotalKobo;
@override final  int discountPercent;
@override final  int savingsKobo;
@override final  int totalKobo;
@override final  DiscountTier? appliedTier;
@override final  DiscountTier? nextTier;
@override@JsonKey() final  double nextTierProgress;
@override@JsonKey() final  int nextTierRemainingKobo;

/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackagePricingCopyWith<_PackagePricing> get copyWith => __$PackagePricingCopyWithImpl<_PackagePricing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackagePricingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackagePricing&&(identical(other.wholesaleSubtotalKobo, wholesaleSubtotalKobo) || other.wholesaleSubtotalKobo == wholesaleSubtotalKobo)&&(identical(other.retailSubtotalKobo, retailSubtotalKobo) || other.retailSubtotalKobo == retailSubtotalKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.savingsKobo, savingsKobo) || other.savingsKobo == savingsKobo)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.appliedTier, appliedTier) || other.appliedTier == appliedTier)&&(identical(other.nextTier, nextTier) || other.nextTier == nextTier)&&(identical(other.nextTierProgress, nextTierProgress) || other.nextTierProgress == nextTierProgress)&&(identical(other.nextTierRemainingKobo, nextTierRemainingKobo) || other.nextTierRemainingKobo == nextTierRemainingKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wholesaleSubtotalKobo,retailSubtotalKobo,discountPercent,savingsKobo,totalKobo,appliedTier,nextTier,nextTierProgress,nextTierRemainingKobo);

@override
String toString() {
  return 'PackagePricing(wholesaleSubtotalKobo: $wholesaleSubtotalKobo, retailSubtotalKobo: $retailSubtotalKobo, discountPercent: $discountPercent, savingsKobo: $savingsKobo, totalKobo: $totalKobo, appliedTier: $appliedTier, nextTier: $nextTier, nextTierProgress: $nextTierProgress, nextTierRemainingKobo: $nextTierRemainingKobo)';
}


}

/// @nodoc
abstract mixin class _$PackagePricingCopyWith<$Res> implements $PackagePricingCopyWith<$Res> {
  factory _$PackagePricingCopyWith(_PackagePricing value, $Res Function(_PackagePricing) _then) = __$PackagePricingCopyWithImpl;
@override @useResult
$Res call({
 int wholesaleSubtotalKobo, int retailSubtotalKobo, int discountPercent, int savingsKobo, int totalKobo, DiscountTier? appliedTier, DiscountTier? nextTier, double nextTierProgress, int nextTierRemainingKobo
});


@override $DiscountTierCopyWith<$Res>? get appliedTier;@override $DiscountTierCopyWith<$Res>? get nextTier;

}
/// @nodoc
class __$PackagePricingCopyWithImpl<$Res>
    implements _$PackagePricingCopyWith<$Res> {
  __$PackagePricingCopyWithImpl(this._self, this._then);

  final _PackagePricing _self;
  final $Res Function(_PackagePricing) _then;

/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wholesaleSubtotalKobo = null,Object? retailSubtotalKobo = null,Object? discountPercent = null,Object? savingsKobo = null,Object? totalKobo = null,Object? appliedTier = freezed,Object? nextTier = freezed,Object? nextTierProgress = null,Object? nextTierRemainingKobo = null,}) {
  return _then(_PackagePricing(
wholesaleSubtotalKobo: null == wholesaleSubtotalKobo ? _self.wholesaleSubtotalKobo : wholesaleSubtotalKobo // ignore: cast_nullable_to_non_nullable
as int,retailSubtotalKobo: null == retailSubtotalKobo ? _self.retailSubtotalKobo : retailSubtotalKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,savingsKobo: null == savingsKobo ? _self.savingsKobo : savingsKobo // ignore: cast_nullable_to_non_nullable
as int,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,appliedTier: freezed == appliedTier ? _self.appliedTier : appliedTier // ignore: cast_nullable_to_non_nullable
as DiscountTier?,nextTier: freezed == nextTier ? _self.nextTier : nextTier // ignore: cast_nullable_to_non_nullable
as DiscountTier?,nextTierProgress: null == nextTierProgress ? _self.nextTierProgress : nextTierProgress // ignore: cast_nullable_to_non_nullable
as double,nextTierRemainingKobo: null == nextTierRemainingKobo ? _self.nextTierRemainingKobo : nextTierRemainingKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscountTierCopyWith<$Res>? get appliedTier {
    if (_self.appliedTier == null) {
    return null;
  }

  return $DiscountTierCopyWith<$Res>(_self.appliedTier!, (value) {
    return _then(_self.copyWith(appliedTier: value));
  });
}/// Create a copy of PackagePricing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiscountTierCopyWith<$Res>? get nextTier {
    if (_self.nextTier == null) {
    return null;
  }

  return $DiscountTierCopyWith<$Res>(_self.nextTier!, (value) {
    return _then(_self.copyWith(nextTier: value));
  });
}
}


/// @nodoc
mixin _$PackageCreator {

 String get id; String get firstName; String get lastName;
/// Create a copy of PackageCreator
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageCreatorCopyWith<PackageCreator> get copyWith => _$PackageCreatorCopyWithImpl<PackageCreator>(this as PackageCreator, _$identity);

  /// Serializes this PackageCreator to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageCreator&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'PackageCreator(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $PackageCreatorCopyWith<$Res>  {
  factory $PackageCreatorCopyWith(PackageCreator value, $Res Function(PackageCreator) _then) = _$PackageCreatorCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName
});




}
/// @nodoc
class _$PackageCreatorCopyWithImpl<$Res>
    implements $PackageCreatorCopyWith<$Res> {
  _$PackageCreatorCopyWithImpl(this._self, this._then);

  final PackageCreator _self;
  final $Res Function(PackageCreator) _then;

/// Create a copy of PackageCreator
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageCreator].
extension PackageCreatorPatterns on PackageCreator {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageCreator value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageCreator() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageCreator value)  $default,){
final _that = this;
switch (_that) {
case _PackageCreator():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageCreator value)?  $default,){
final _that = this;
switch (_that) {
case _PackageCreator() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageCreator() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName)  $default,) {final _that = this;
switch (_that) {
case _PackageCreator():
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName)?  $default,) {final _that = this;
switch (_that) {
case _PackageCreator() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageCreator implements PackageCreator {
  const _PackageCreator({required this.id, required this.firstName, required this.lastName});
  factory _PackageCreator.fromJson(Map<String, dynamic> json) => _$PackageCreatorFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of PackageCreator
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageCreatorCopyWith<_PackageCreator> get copyWith => __$PackageCreatorCopyWithImpl<_PackageCreator>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageCreatorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageCreator&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'PackageCreator(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$PackageCreatorCopyWith<$Res> implements $PackageCreatorCopyWith<$Res> {
  factory _$PackageCreatorCopyWith(_PackageCreator value, $Res Function(_PackageCreator) _then) = __$PackageCreatorCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName
});




}
/// @nodoc
class __$PackageCreatorCopyWithImpl<$Res>
    implements _$PackageCreatorCopyWith<$Res> {
  __$PackageCreatorCopyWithImpl(this._self, this._then);

  final _PackageCreator _self;
  final $Res Function(_PackageCreator) _then;

/// Create a copy of PackageCreator
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_PackageCreator(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PackageItem {

 String get id; String get packId; String get productId; int get quantity; int get sortOrder; String get name; String get brand; String get packageLabel; String get imageUrl; int get priceKobo; int get retailPriceKobo; int get lineWholesaleKobo; int get lineRetailKobo;
/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageItemCopyWith<PackageItem> get copyWith => _$PackageItemCopyWithImpl<PackageItem>(this as PackageItem, _$identity);

  /// Serializes this PackageItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.lineWholesaleKobo, lineWholesaleKobo) || other.lineWholesaleKobo == lineWholesaleKobo)&&(identical(other.lineRetailKobo, lineRetailKobo) || other.lineRetailKobo == lineRetailKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packId,productId,quantity,sortOrder,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,lineWholesaleKobo,lineRetailKobo);

@override
String toString() {
  return 'PackageItem(id: $id, packId: $packId, productId: $productId, quantity: $quantity, sortOrder: $sortOrder, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, lineWholesaleKobo: $lineWholesaleKobo, lineRetailKobo: $lineRetailKobo)';
}


}

/// @nodoc
abstract mixin class $PackageItemCopyWith<$Res>  {
  factory $PackageItemCopyWith(PackageItem value, $Res Function(PackageItem) _then) = _$PackageItemCopyWithImpl;
@useResult
$Res call({
 String id, String packId, String productId, int quantity, int sortOrder, String name, String brand, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int lineWholesaleKobo, int lineRetailKobo
});




}
/// @nodoc
class _$PackageItemCopyWithImpl<$Res>
    implements $PackageItemCopyWith<$Res> {
  _$PackageItemCopyWithImpl(this._self, this._then);

  final PackageItem _self;
  final $Res Function(PackageItem) _then;

/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? packId = null,Object? productId = null,Object? quantity = null,Object? sortOrder = null,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? lineWholesaleKobo = null,Object? lineRetailKobo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,lineWholesaleKobo: null == lineWholesaleKobo ? _self.lineWholesaleKobo : lineWholesaleKobo // ignore: cast_nullable_to_non_nullable
as int,lineRetailKobo: null == lineRetailKobo ? _self.lineRetailKobo : lineRetailKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageItem].
extension PackageItemPatterns on PackageItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageItem value)  $default,){
final _that = this;
switch (_that) {
case _PackageItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageItem value)?  $default,){
final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String packId,  String productId,  int quantity,  int sortOrder,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int lineWholesaleKobo,  int lineRetailKobo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
return $default(_that.id,_that.packId,_that.productId,_that.quantity,_that.sortOrder,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.lineWholesaleKobo,_that.lineRetailKobo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String packId,  String productId,  int quantity,  int sortOrder,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int lineWholesaleKobo,  int lineRetailKobo)  $default,) {final _that = this;
switch (_that) {
case _PackageItem():
return $default(_that.id,_that.packId,_that.productId,_that.quantity,_that.sortOrder,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.lineWholesaleKobo,_that.lineRetailKobo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String packId,  String productId,  int quantity,  int sortOrder,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int lineWholesaleKobo,  int lineRetailKobo)?  $default,) {final _that = this;
switch (_that) {
case _PackageItem() when $default != null:
return $default(_that.id,_that.packId,_that.productId,_that.quantity,_that.sortOrder,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.lineWholesaleKobo,_that.lineRetailKobo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageItem implements PackageItem {
  const _PackageItem({required this.id, required this.packId, required this.productId, required this.quantity, required this.sortOrder, required this.name, required this.brand, required this.packageLabel, required this.imageUrl, required this.priceKobo, required this.retailPriceKobo, required this.lineWholesaleKobo, required this.lineRetailKobo});
  factory _PackageItem.fromJson(Map<String, dynamic> json) => _$PackageItemFromJson(json);

@override final  String id;
@override final  String packId;
@override final  String productId;
@override final  int quantity;
@override final  int sortOrder;
@override final  String name;
@override final  String brand;
@override final  String packageLabel;
@override final  String imageUrl;
@override final  int priceKobo;
@override final  int retailPriceKobo;
@override final  int lineWholesaleKobo;
@override final  int lineRetailKobo;

/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageItemCopyWith<_PackageItem> get copyWith => __$PackageItemCopyWithImpl<_PackageItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.lineWholesaleKobo, lineWholesaleKobo) || other.lineWholesaleKobo == lineWholesaleKobo)&&(identical(other.lineRetailKobo, lineRetailKobo) || other.lineRetailKobo == lineRetailKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packId,productId,quantity,sortOrder,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,lineWholesaleKobo,lineRetailKobo);

@override
String toString() {
  return 'PackageItem(id: $id, packId: $packId, productId: $productId, quantity: $quantity, sortOrder: $sortOrder, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, lineWholesaleKobo: $lineWholesaleKobo, lineRetailKobo: $lineRetailKobo)';
}


}

/// @nodoc
abstract mixin class _$PackageItemCopyWith<$Res> implements $PackageItemCopyWith<$Res> {
  factory _$PackageItemCopyWith(_PackageItem value, $Res Function(_PackageItem) _then) = __$PackageItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String packId, String productId, int quantity, int sortOrder, String name, String brand, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int lineWholesaleKobo, int lineRetailKobo
});




}
/// @nodoc
class __$PackageItemCopyWithImpl<$Res>
    implements _$PackageItemCopyWith<$Res> {
  __$PackageItemCopyWithImpl(this._self, this._then);

  final _PackageItem _self;
  final $Res Function(_PackageItem) _then;

/// Create a copy of PackageItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? packId = null,Object? productId = null,Object? quantity = null,Object? sortOrder = null,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? lineWholesaleKobo = null,Object? lineRetailKobo = null,}) {
  return _then(_PackageItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,lineWholesaleKobo: null == lineWholesaleKobo ? _self.lineWholesaleKobo : lineWholesaleKobo // ignore: cast_nullable_to_non_nullable
as int,lineRetailKobo: null == lineRetailKobo ? _self.lineRetailKobo : lineRetailKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PackageListItem {

 String get id; String get kind; String get name; String get description; String get coverImageUrl; bool get isPopular; String get visibility; String get shareSlug; String get shareUrl; String get itemSummary; int get itemCount; PackagePricing get pricing; PackageCreator? get createdBy;
/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageListItemCopyWith<PackageListItem> get copyWith => _$PackageListItemCopyWithImpl<PackageListItem>(this as PackageListItem, _$identity);

  /// Serializes this PackageListItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.shareSlug, shareSlug) || other.shareSlug == shareSlug)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl)&&(identical(other.itemSummary, itemSummary) || other.itemSummary == itemSummary)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,name,description,coverImageUrl,isPopular,visibility,shareSlug,shareUrl,itemSummary,itemCount,pricing,createdBy);

@override
String toString() {
  return 'PackageListItem(id: $id, kind: $kind, name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, visibility: $visibility, shareSlug: $shareSlug, shareUrl: $shareUrl, itemSummary: $itemSummary, itemCount: $itemCount, pricing: $pricing, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $PackageListItemCopyWith<$Res>  {
  factory $PackageListItemCopyWith(PackageListItem value, $Res Function(PackageListItem) _then) = _$PackageListItemCopyWithImpl;
@useResult
$Res call({
 String id, String kind, String name, String description, String coverImageUrl, bool isPopular, String visibility, String shareSlug, String shareUrl, String itemSummary, int itemCount, PackagePricing pricing, PackageCreator? createdBy
});


$PackagePricingCopyWith<$Res> get pricing;$PackageCreatorCopyWith<$Res>? get createdBy;

}
/// @nodoc
class _$PackageListItemCopyWithImpl<$Res>
    implements $PackageListItemCopyWith<$Res> {
  _$PackageListItemCopyWithImpl(this._self, this._then);

  final PackageListItem _self;
  final $Res Function(PackageListItem) _then;

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? isPopular = null,Object? visibility = null,Object? shareSlug = null,Object? shareUrl = null,Object? itemSummary = null,Object? itemCount = null,Object? pricing = null,Object? createdBy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,shareSlug: null == shareSlug ? _self.shareSlug : shareSlug // ignore: cast_nullable_to_non_nullable
as String,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,itemSummary: null == itemSummary ? _self.itemSummary : itemSummary // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PackagePricing,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as PackageCreator?,
  ));
}
/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePricingCopyWith<$Res> get pricing {
  
  return $PackagePricingCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageCreatorCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $PackageCreatorCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [PackageListItem].
extension PackageListItemPatterns on PackageListItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageListItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageListItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageListItem value)  $default,){
final _that = this;
switch (_that) {
case _PackageListItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageListItem value)?  $default,){
final _that = this;
switch (_that) {
case _PackageListItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String kind,  String name,  String description,  String coverImageUrl,  bool isPopular,  String visibility,  String shareSlug,  String shareUrl,  String itemSummary,  int itemCount,  PackagePricing pricing,  PackageCreator? createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageListItem() when $default != null:
return $default(_that.id,_that.kind,_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.visibility,_that.shareSlug,_that.shareUrl,_that.itemSummary,_that.itemCount,_that.pricing,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String kind,  String name,  String description,  String coverImageUrl,  bool isPopular,  String visibility,  String shareSlug,  String shareUrl,  String itemSummary,  int itemCount,  PackagePricing pricing,  PackageCreator? createdBy)  $default,) {final _that = this;
switch (_that) {
case _PackageListItem():
return $default(_that.id,_that.kind,_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.visibility,_that.shareSlug,_that.shareUrl,_that.itemSummary,_that.itemCount,_that.pricing,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String kind,  String name,  String description,  String coverImageUrl,  bool isPopular,  String visibility,  String shareSlug,  String shareUrl,  String itemSummary,  int itemCount,  PackagePricing pricing,  PackageCreator? createdBy)?  $default,) {final _that = this;
switch (_that) {
case _PackageListItem() when $default != null:
return $default(_that.id,_that.kind,_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.visibility,_that.shareSlug,_that.shareUrl,_that.itemSummary,_that.itemCount,_that.pricing,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageListItem implements PackageListItem {
  const _PackageListItem({required this.id, required this.kind, required this.name, required this.description, required this.coverImageUrl, required this.isPopular, required this.visibility, required this.shareSlug, required this.shareUrl, required this.itemSummary, required this.itemCount, required this.pricing, this.createdBy});
  factory _PackageListItem.fromJson(Map<String, dynamic> json) => _$PackageListItemFromJson(json);

@override final  String id;
@override final  String kind;
@override final  String name;
@override final  String description;
@override final  String coverImageUrl;
@override final  bool isPopular;
@override final  String visibility;
@override final  String shareSlug;
@override final  String shareUrl;
@override final  String itemSummary;
@override final  int itemCount;
@override final  PackagePricing pricing;
@override final  PackageCreator? createdBy;

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageListItemCopyWith<_PackageListItem> get copyWith => __$PackageListItemCopyWithImpl<_PackageListItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageListItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageListItem&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.shareSlug, shareSlug) || other.shareSlug == shareSlug)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl)&&(identical(other.itemSummary, itemSummary) || other.itemSummary == itemSummary)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,kind,name,description,coverImageUrl,isPopular,visibility,shareSlug,shareUrl,itemSummary,itemCount,pricing,createdBy);

@override
String toString() {
  return 'PackageListItem(id: $id, kind: $kind, name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, visibility: $visibility, shareSlug: $shareSlug, shareUrl: $shareUrl, itemSummary: $itemSummary, itemCount: $itemCount, pricing: $pricing, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$PackageListItemCopyWith<$Res> implements $PackageListItemCopyWith<$Res> {
  factory _$PackageListItemCopyWith(_PackageListItem value, $Res Function(_PackageListItem) _then) = __$PackageListItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String kind, String name, String description, String coverImageUrl, bool isPopular, String visibility, String shareSlug, String shareUrl, String itemSummary, int itemCount, PackagePricing pricing, PackageCreator? createdBy
});


@override $PackagePricingCopyWith<$Res> get pricing;@override $PackageCreatorCopyWith<$Res>? get createdBy;

}
/// @nodoc
class __$PackageListItemCopyWithImpl<$Res>
    implements _$PackageListItemCopyWith<$Res> {
  __$PackageListItemCopyWithImpl(this._self, this._then);

  final _PackageListItem _self;
  final $Res Function(_PackageListItem) _then;

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kind = null,Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? isPopular = null,Object? visibility = null,Object? shareSlug = null,Object? shareUrl = null,Object? itemSummary = null,Object? itemCount = null,Object? pricing = null,Object? createdBy = freezed,}) {
  return _then(_PackageListItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,shareSlug: null == shareSlug ? _self.shareSlug : shareSlug // ignore: cast_nullable_to_non_nullable
as String,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,itemSummary: null == itemSummary ? _self.itemSummary : itemSummary // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PackagePricing,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as PackageCreator?,
  ));
}

/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePricingCopyWith<$Res> get pricing {
  
  return $PackagePricingCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}/// Create a copy of PackageListItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageCreatorCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $PackageCreatorCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}
}


/// @nodoc
mixin _$PantryPackage {

 String get id; String get kind; String get name; String get description; String get coverImageUrl; bool get isPopular; int get sortOrder; bool get isActive; String get visibility; String get shareSlug; String get shareUrl; String get shareBannerUrl; String? get createdByUserId; PackageCreator? get createdBy; String get itemSummary; int get itemCount; List<PackageItem> get items; PackagePricing get pricing; String get createdAt; String get updatedAt;
/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PantryPackageCopyWith<PantryPackage> get copyWith => _$PantryPackageCopyWithImpl<PantryPackage>(this as PantryPackage, _$identity);

  /// Serializes this PantryPackage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PantryPackage&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.shareSlug, shareSlug) || other.shareSlug == shareSlug)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl)&&(identical(other.shareBannerUrl, shareBannerUrl) || other.shareBannerUrl == shareBannerUrl)&&(identical(other.createdByUserId, createdByUserId) || other.createdByUserId == createdByUserId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.itemSummary, itemSummary) || other.itemSummary == itemSummary)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,kind,name,description,coverImageUrl,isPopular,sortOrder,isActive,visibility,shareSlug,shareUrl,shareBannerUrl,createdByUserId,createdBy,itemSummary,itemCount,const DeepCollectionEquality().hash(items),pricing,createdAt,updatedAt]);

@override
String toString() {
  return 'PantryPackage(id: $id, kind: $kind, name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, sortOrder: $sortOrder, isActive: $isActive, visibility: $visibility, shareSlug: $shareSlug, shareUrl: $shareUrl, shareBannerUrl: $shareBannerUrl, createdByUserId: $createdByUserId, createdBy: $createdBy, itemSummary: $itemSummary, itemCount: $itemCount, items: $items, pricing: $pricing, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PantryPackageCopyWith<$Res>  {
  factory $PantryPackageCopyWith(PantryPackage value, $Res Function(PantryPackage) _then) = _$PantryPackageCopyWithImpl;
@useResult
$Res call({
 String id, String kind, String name, String description, String coverImageUrl, bool isPopular, int sortOrder, bool isActive, String visibility, String shareSlug, String shareUrl, String shareBannerUrl, String? createdByUserId, PackageCreator? createdBy, String itemSummary, int itemCount, List<PackageItem> items, PackagePricing pricing, String createdAt, String updatedAt
});


$PackageCreatorCopyWith<$Res>? get createdBy;$PackagePricingCopyWith<$Res> get pricing;

}
/// @nodoc
class _$PantryPackageCopyWithImpl<$Res>
    implements $PantryPackageCopyWith<$Res> {
  _$PantryPackageCopyWithImpl(this._self, this._then);

  final PantryPackage _self;
  final $Res Function(PantryPackage) _then;

/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? isPopular = null,Object? sortOrder = null,Object? isActive = null,Object? visibility = null,Object? shareSlug = null,Object? shareUrl = null,Object? shareBannerUrl = null,Object? createdByUserId = freezed,Object? createdBy = freezed,Object? itemSummary = null,Object? itemCount = null,Object? items = null,Object? pricing = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,shareSlug: null == shareSlug ? _self.shareSlug : shareSlug // ignore: cast_nullable_to_non_nullable
as String,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,shareBannerUrl: null == shareBannerUrl ? _self.shareBannerUrl : shareBannerUrl // ignore: cast_nullable_to_non_nullable
as String,createdByUserId: freezed == createdByUserId ? _self.createdByUserId : createdByUserId // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as PackageCreator?,itemSummary: null == itemSummary ? _self.itemSummary : itemSummary // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItem>,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PackagePricing,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageCreatorCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $PackageCreatorCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePricingCopyWith<$Res> get pricing {
  
  return $PackagePricingCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}
}


/// Adds pattern-matching-related methods to [PantryPackage].
extension PantryPackagePatterns on PantryPackage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PantryPackage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PantryPackage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PantryPackage value)  $default,){
final _that = this;
switch (_that) {
case _PantryPackage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PantryPackage value)?  $default,){
final _that = this;
switch (_that) {
case _PantryPackage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String kind,  String name,  String description,  String coverImageUrl,  bool isPopular,  int sortOrder,  bool isActive,  String visibility,  String shareSlug,  String shareUrl,  String shareBannerUrl,  String? createdByUserId,  PackageCreator? createdBy,  String itemSummary,  int itemCount,  List<PackageItem> items,  PackagePricing pricing,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PantryPackage() when $default != null:
return $default(_that.id,_that.kind,_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.visibility,_that.shareSlug,_that.shareUrl,_that.shareBannerUrl,_that.createdByUserId,_that.createdBy,_that.itemSummary,_that.itemCount,_that.items,_that.pricing,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String kind,  String name,  String description,  String coverImageUrl,  bool isPopular,  int sortOrder,  bool isActive,  String visibility,  String shareSlug,  String shareUrl,  String shareBannerUrl,  String? createdByUserId,  PackageCreator? createdBy,  String itemSummary,  int itemCount,  List<PackageItem> items,  PackagePricing pricing,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PantryPackage():
return $default(_that.id,_that.kind,_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.visibility,_that.shareSlug,_that.shareUrl,_that.shareBannerUrl,_that.createdByUserId,_that.createdBy,_that.itemSummary,_that.itemCount,_that.items,_that.pricing,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String kind,  String name,  String description,  String coverImageUrl,  bool isPopular,  int sortOrder,  bool isActive,  String visibility,  String shareSlug,  String shareUrl,  String shareBannerUrl,  String? createdByUserId,  PackageCreator? createdBy,  String itemSummary,  int itemCount,  List<PackageItem> items,  PackagePricing pricing,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PantryPackage() when $default != null:
return $default(_that.id,_that.kind,_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.visibility,_that.shareSlug,_that.shareUrl,_that.shareBannerUrl,_that.createdByUserId,_that.createdBy,_that.itemSummary,_that.itemCount,_that.items,_that.pricing,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PantryPackage implements PantryPackage {
  const _PantryPackage({required this.id, required this.kind, required this.name, required this.description, required this.coverImageUrl, required this.isPopular, required this.sortOrder, required this.isActive, required this.visibility, required this.shareSlug, required this.shareUrl, required this.shareBannerUrl, this.createdByUserId, this.createdBy, required this.itemSummary, required this.itemCount, required final  List<PackageItem> items, required this.pricing, required this.createdAt, required this.updatedAt}): _items = items;
  factory _PantryPackage.fromJson(Map<String, dynamic> json) => _$PantryPackageFromJson(json);

@override final  String id;
@override final  String kind;
@override final  String name;
@override final  String description;
@override final  String coverImageUrl;
@override final  bool isPopular;
@override final  int sortOrder;
@override final  bool isActive;
@override final  String visibility;
@override final  String shareSlug;
@override final  String shareUrl;
@override final  String shareBannerUrl;
@override final  String? createdByUserId;
@override final  PackageCreator? createdBy;
@override final  String itemSummary;
@override final  int itemCount;
 final  List<PackageItem> _items;
@override List<PackageItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  PackagePricing pricing;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PantryPackageCopyWith<_PantryPackage> get copyWith => __$PantryPackageCopyWithImpl<_PantryPackage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PantryPackageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PantryPackage&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.shareSlug, shareSlug) || other.shareSlug == shareSlug)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl)&&(identical(other.shareBannerUrl, shareBannerUrl) || other.shareBannerUrl == shareBannerUrl)&&(identical(other.createdByUserId, createdByUserId) || other.createdByUserId == createdByUserId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.itemSummary, itemSummary) || other.itemSummary == itemSummary)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pricing, pricing) || other.pricing == pricing)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,kind,name,description,coverImageUrl,isPopular,sortOrder,isActive,visibility,shareSlug,shareUrl,shareBannerUrl,createdByUserId,createdBy,itemSummary,itemCount,const DeepCollectionEquality().hash(_items),pricing,createdAt,updatedAt]);

@override
String toString() {
  return 'PantryPackage(id: $id, kind: $kind, name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, sortOrder: $sortOrder, isActive: $isActive, visibility: $visibility, shareSlug: $shareSlug, shareUrl: $shareUrl, shareBannerUrl: $shareBannerUrl, createdByUserId: $createdByUserId, createdBy: $createdBy, itemSummary: $itemSummary, itemCount: $itemCount, items: $items, pricing: $pricing, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PantryPackageCopyWith<$Res> implements $PantryPackageCopyWith<$Res> {
  factory _$PantryPackageCopyWith(_PantryPackage value, $Res Function(_PantryPackage) _then) = __$PantryPackageCopyWithImpl;
@override @useResult
$Res call({
 String id, String kind, String name, String description, String coverImageUrl, bool isPopular, int sortOrder, bool isActive, String visibility, String shareSlug, String shareUrl, String shareBannerUrl, String? createdByUserId, PackageCreator? createdBy, String itemSummary, int itemCount, List<PackageItem> items, PackagePricing pricing, String createdAt, String updatedAt
});


@override $PackageCreatorCopyWith<$Res>? get createdBy;@override $PackagePricingCopyWith<$Res> get pricing;

}
/// @nodoc
class __$PantryPackageCopyWithImpl<$Res>
    implements _$PantryPackageCopyWith<$Res> {
  __$PantryPackageCopyWithImpl(this._self, this._then);

  final _PantryPackage _self;
  final $Res Function(_PantryPackage) _then;

/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kind = null,Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? isPopular = null,Object? sortOrder = null,Object? isActive = null,Object? visibility = null,Object? shareSlug = null,Object? shareUrl = null,Object? shareBannerUrl = null,Object? createdByUserId = freezed,Object? createdBy = freezed,Object? itemSummary = null,Object? itemCount = null,Object? items = null,Object? pricing = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_PantryPackage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,shareSlug: null == shareSlug ? _self.shareSlug : shareSlug // ignore: cast_nullable_to_non_nullable
as String,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,shareBannerUrl: null == shareBannerUrl ? _self.shareBannerUrl : shareBannerUrl // ignore: cast_nullable_to_non_nullable
as String,createdByUserId: freezed == createdByUserId ? _self.createdByUserId : createdByUserId // ignore: cast_nullable_to_non_nullable
as String?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as PackageCreator?,itemSummary: null == itemSummary ? _self.itemSummary : itemSummary // ignore: cast_nullable_to_non_nullable
as String,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItem>,pricing: null == pricing ? _self.pricing : pricing // ignore: cast_nullable_to_non_nullable
as PackagePricing,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackageCreatorCopyWith<$Res>? get createdBy {
    if (_self.createdBy == null) {
    return null;
  }

  return $PackageCreatorCopyWith<$Res>(_self.createdBy!, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of PantryPackage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PackagePricingCopyWith<$Res> get pricing {
  
  return $PackagePricingCopyWith<$Res>(_self.pricing, (value) {
    return _then(_self.copyWith(pricing: value));
  });
}
}


/// @nodoc
mixin _$PackageSubscription {

 String get id; String get packageId; String get packageName; String get status; Map<String, dynamic> get snapshot; String get createdAt;
/// Create a copy of PackageSubscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageSubscriptionCopyWith<PackageSubscription> get copyWith => _$PackageSubscriptionCopyWithImpl<PackageSubscription>(this as PackageSubscription, _$identity);

  /// Serializes this PackageSubscription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageSubscription&&(identical(other.id, id) || other.id == id)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.snapshot, snapshot)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packageId,packageName,status,const DeepCollectionEquality().hash(snapshot),createdAt);

@override
String toString() {
  return 'PackageSubscription(id: $id, packageId: $packageId, packageName: $packageName, status: $status, snapshot: $snapshot, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PackageSubscriptionCopyWith<$Res>  {
  factory $PackageSubscriptionCopyWith(PackageSubscription value, $Res Function(PackageSubscription) _then) = _$PackageSubscriptionCopyWithImpl;
@useResult
$Res call({
 String id, String packageId, String packageName, String status, Map<String, dynamic> snapshot, String createdAt
});




}
/// @nodoc
class _$PackageSubscriptionCopyWithImpl<$Res>
    implements $PackageSubscriptionCopyWith<$Res> {
  _$PackageSubscriptionCopyWithImpl(this._self, this._then);

  final PackageSubscription _self;
  final $Res Function(PackageSubscription) _then;

/// Create a copy of PackageSubscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? packageId = null,Object? packageName = null,Object? status = null,Object? snapshot = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,snapshot: null == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageSubscription].
extension PackageSubscriptionPatterns on PackageSubscription {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageSubscription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageSubscription() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageSubscription value)  $default,){
final _that = this;
switch (_that) {
case _PackageSubscription():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageSubscription value)?  $default,){
final _that = this;
switch (_that) {
case _PackageSubscription() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String packageId,  String packageName,  String status,  Map<String, dynamic> snapshot,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageSubscription() when $default != null:
return $default(_that.id,_that.packageId,_that.packageName,_that.status,_that.snapshot,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String packageId,  String packageName,  String status,  Map<String, dynamic> snapshot,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _PackageSubscription():
return $default(_that.id,_that.packageId,_that.packageName,_that.status,_that.snapshot,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String packageId,  String packageName,  String status,  Map<String, dynamic> snapshot,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PackageSubscription() when $default != null:
return $default(_that.id,_that.packageId,_that.packageName,_that.status,_that.snapshot,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageSubscription implements PackageSubscription {
  const _PackageSubscription({required this.id, required this.packageId, required this.packageName, required this.status, required final  Map<String, dynamic> snapshot, required this.createdAt}): _snapshot = snapshot;
  factory _PackageSubscription.fromJson(Map<String, dynamic> json) => _$PackageSubscriptionFromJson(json);

@override final  String id;
@override final  String packageId;
@override final  String packageName;
@override final  String status;
 final  Map<String, dynamic> _snapshot;
@override Map<String, dynamic> get snapshot {
  if (_snapshot is EqualUnmodifiableMapView) return _snapshot;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_snapshot);
}

@override final  String createdAt;

/// Create a copy of PackageSubscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageSubscriptionCopyWith<_PackageSubscription> get copyWith => __$PackageSubscriptionCopyWithImpl<_PackageSubscription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageSubscriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageSubscription&&(identical(other.id, id) || other.id == id)&&(identical(other.packageId, packageId) || other.packageId == packageId)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._snapshot, _snapshot)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,packageId,packageName,status,const DeepCollectionEquality().hash(_snapshot),createdAt);

@override
String toString() {
  return 'PackageSubscription(id: $id, packageId: $packageId, packageName: $packageName, status: $status, snapshot: $snapshot, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PackageSubscriptionCopyWith<$Res> implements $PackageSubscriptionCopyWith<$Res> {
  factory _$PackageSubscriptionCopyWith(_PackageSubscription value, $Res Function(_PackageSubscription) _then) = __$PackageSubscriptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String packageId, String packageName, String status, Map<String, dynamic> snapshot, String createdAt
});




}
/// @nodoc
class __$PackageSubscriptionCopyWithImpl<$Res>
    implements _$PackageSubscriptionCopyWith<$Res> {
  __$PackageSubscriptionCopyWithImpl(this._self, this._then);

  final _PackageSubscription _self;
  final $Res Function(_PackageSubscription) _then;

/// Create a copy of PackageSubscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? packageId = null,Object? packageName = null,Object? status = null,Object? snapshot = null,Object? createdAt = null,}) {
  return _then(_PackageSubscription(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,snapshot: null == snapshot ? _self._snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MinePackagesResponse {

 List<PackageListItem> get packages; List<PackageSubscription> get subscriptions;
/// Create a copy of MinePackagesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinePackagesResponseCopyWith<MinePackagesResponse> get copyWith => _$MinePackagesResponseCopyWithImpl<MinePackagesResponse>(this as MinePackagesResponse, _$identity);

  /// Serializes this MinePackagesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MinePackagesResponse&&const DeepCollectionEquality().equals(other.packages, packages)&&const DeepCollectionEquality().equals(other.subscriptions, subscriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(packages),const DeepCollectionEquality().hash(subscriptions));

@override
String toString() {
  return 'MinePackagesResponse(packages: $packages, subscriptions: $subscriptions)';
}


}

/// @nodoc
abstract mixin class $MinePackagesResponseCopyWith<$Res>  {
  factory $MinePackagesResponseCopyWith(MinePackagesResponse value, $Res Function(MinePackagesResponse) _then) = _$MinePackagesResponseCopyWithImpl;
@useResult
$Res call({
 List<PackageListItem> packages, List<PackageSubscription> subscriptions
});




}
/// @nodoc
class _$MinePackagesResponseCopyWithImpl<$Res>
    implements $MinePackagesResponseCopyWith<$Res> {
  _$MinePackagesResponseCopyWithImpl(this._self, this._then);

  final MinePackagesResponse _self;
  final $Res Function(MinePackagesResponse) _then;

/// Create a copy of MinePackagesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packages = null,Object? subscriptions = null,}) {
  return _then(_self.copyWith(
packages: null == packages ? _self.packages : packages // ignore: cast_nullable_to_non_nullable
as List<PackageListItem>,subscriptions: null == subscriptions ? _self.subscriptions : subscriptions // ignore: cast_nullable_to_non_nullable
as List<PackageSubscription>,
  ));
}

}


/// Adds pattern-matching-related methods to [MinePackagesResponse].
extension MinePackagesResponsePatterns on MinePackagesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MinePackagesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MinePackagesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MinePackagesResponse value)  $default,){
final _that = this;
switch (_that) {
case _MinePackagesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MinePackagesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MinePackagesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PackageListItem> packages,  List<PackageSubscription> subscriptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MinePackagesResponse() when $default != null:
return $default(_that.packages,_that.subscriptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PackageListItem> packages,  List<PackageSubscription> subscriptions)  $default,) {final _that = this;
switch (_that) {
case _MinePackagesResponse():
return $default(_that.packages,_that.subscriptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PackageListItem> packages,  List<PackageSubscription> subscriptions)?  $default,) {final _that = this;
switch (_that) {
case _MinePackagesResponse() when $default != null:
return $default(_that.packages,_that.subscriptions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MinePackagesResponse implements MinePackagesResponse {
  const _MinePackagesResponse({required final  List<PackageListItem> packages, required final  List<PackageSubscription> subscriptions}): _packages = packages,_subscriptions = subscriptions;
  factory _MinePackagesResponse.fromJson(Map<String, dynamic> json) => _$MinePackagesResponseFromJson(json);

 final  List<PackageListItem> _packages;
@override List<PackageListItem> get packages {
  if (_packages is EqualUnmodifiableListView) return _packages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packages);
}

 final  List<PackageSubscription> _subscriptions;
@override List<PackageSubscription> get subscriptions {
  if (_subscriptions is EqualUnmodifiableListView) return _subscriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subscriptions);
}


/// Create a copy of MinePackagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MinePackagesResponseCopyWith<_MinePackagesResponse> get copyWith => __$MinePackagesResponseCopyWithImpl<_MinePackagesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MinePackagesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MinePackagesResponse&&const DeepCollectionEquality().equals(other._packages, _packages)&&const DeepCollectionEquality().equals(other._subscriptions, _subscriptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_packages),const DeepCollectionEquality().hash(_subscriptions));

@override
String toString() {
  return 'MinePackagesResponse(packages: $packages, subscriptions: $subscriptions)';
}


}

/// @nodoc
abstract mixin class _$MinePackagesResponseCopyWith<$Res> implements $MinePackagesResponseCopyWith<$Res> {
  factory _$MinePackagesResponseCopyWith(_MinePackagesResponse value, $Res Function(_MinePackagesResponse) _then) = __$MinePackagesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<PackageListItem> packages, List<PackageSubscription> subscriptions
});




}
/// @nodoc
class __$MinePackagesResponseCopyWithImpl<$Res>
    implements _$MinePackagesResponseCopyWith<$Res> {
  __$MinePackagesResponseCopyWithImpl(this._self, this._then);

  final _MinePackagesResponse _self;
  final $Res Function(_MinePackagesResponse) _then;

/// Create a copy of MinePackagesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packages = null,Object? subscriptions = null,}) {
  return _then(_MinePackagesResponse(
packages: null == packages ? _self._packages : packages // ignore: cast_nullable_to_non_nullable
as List<PackageListItem>,subscriptions: null == subscriptions ? _self._subscriptions : subscriptions // ignore: cast_nullable_to_non_nullable
as List<PackageSubscription>,
  ));
}


}


/// @nodoc
mixin _$PackageItemInput {

 String get packId; int get quantity; int? get sortOrder;
/// Create a copy of PackageItemInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageItemInputCopyWith<PackageItemInput> get copyWith => _$PackageItemInputCopyWithImpl<PackageItemInput>(this as PackageItemInput, _$identity);

  /// Serializes this PackageItemInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageItemInput&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packId,quantity,sortOrder);

@override
String toString() {
  return 'PackageItemInput(packId: $packId, quantity: $quantity, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $PackageItemInputCopyWith<$Res>  {
  factory $PackageItemInputCopyWith(PackageItemInput value, $Res Function(PackageItemInput) _then) = _$PackageItemInputCopyWithImpl;
@useResult
$Res call({
 String packId, int quantity, int? sortOrder
});




}
/// @nodoc
class _$PackageItemInputCopyWithImpl<$Res>
    implements $PackageItemInputCopyWith<$Res> {
  _$PackageItemInputCopyWithImpl(this._self, this._then);

  final PackageItemInput _self;
  final $Res Function(PackageItemInput) _then;

/// Create a copy of PackageItemInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packId = null,Object? quantity = null,Object? sortOrder = freezed,}) {
  return _then(_self.copyWith(
packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageItemInput].
extension PackageItemInputPatterns on PackageItemInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageItemInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageItemInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageItemInput value)  $default,){
final _that = this;
switch (_that) {
case _PackageItemInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageItemInput value)?  $default,){
final _that = this;
switch (_that) {
case _PackageItemInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String packId,  int quantity,  int? sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageItemInput() when $default != null:
return $default(_that.packId,_that.quantity,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String packId,  int quantity,  int? sortOrder)  $default,) {final _that = this;
switch (_that) {
case _PackageItemInput():
return $default(_that.packId,_that.quantity,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String packId,  int quantity,  int? sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _PackageItemInput() when $default != null:
return $default(_that.packId,_that.quantity,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageItemInput implements PackageItemInput {
  const _PackageItemInput({required this.packId, required this.quantity, this.sortOrder});
  factory _PackageItemInput.fromJson(Map<String, dynamic> json) => _$PackageItemInputFromJson(json);

@override final  String packId;
@override final  int quantity;
@override final  int? sortOrder;

/// Create a copy of PackageItemInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageItemInputCopyWith<_PackageItemInput> get copyWith => __$PackageItemInputCopyWithImpl<_PackageItemInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageItemInputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageItemInput&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,packId,quantity,sortOrder);

@override
String toString() {
  return 'PackageItemInput(packId: $packId, quantity: $quantity, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$PackageItemInputCopyWith<$Res> implements $PackageItemInputCopyWith<$Res> {
  factory _$PackageItemInputCopyWith(_PackageItemInput value, $Res Function(_PackageItemInput) _then) = __$PackageItemInputCopyWithImpl;
@override @useResult
$Res call({
 String packId, int quantity, int? sortOrder
});




}
/// @nodoc
class __$PackageItemInputCopyWithImpl<$Res>
    implements _$PackageItemInputCopyWith<$Res> {
  __$PackageItemInputCopyWithImpl(this._self, this._then);

  final _PackageItemInput _self;
  final $Res Function(_PackageItemInput) _then;

/// Create a copy of PackageItemInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packId = null,Object? quantity = null,Object? sortOrder = freezed,}) {
  return _then(_PackageItemInput(
packId: null == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CreateCommunityPackageRequest {

 String get name; String get description; String get coverImageUrl; String get visibility; List<PackageItemInput> get items;
/// Create a copy of CreateCommunityPackageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCommunityPackageRequestCopyWith<CreateCommunityPackageRequest> get copyWith => _$CreateCommunityPackageRequestCopyWithImpl<CreateCommunityPackageRequest>(this as CreateCommunityPackageRequest, _$identity);

  /// Serializes this CreateCommunityPackageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCommunityPackageRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,coverImageUrl,visibility,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'CreateCommunityPackageRequest(name: $name, description: $description, coverImageUrl: $coverImageUrl, visibility: $visibility, items: $items)';
}


}

/// @nodoc
abstract mixin class $CreateCommunityPackageRequestCopyWith<$Res>  {
  factory $CreateCommunityPackageRequestCopyWith(CreateCommunityPackageRequest value, $Res Function(CreateCommunityPackageRequest) _then) = _$CreateCommunityPackageRequestCopyWithImpl;
@useResult
$Res call({
 String name, String description, String coverImageUrl, String visibility, List<PackageItemInput> items
});




}
/// @nodoc
class _$CreateCommunityPackageRequestCopyWithImpl<$Res>
    implements $CreateCommunityPackageRequestCopyWith<$Res> {
  _$CreateCommunityPackageRequestCopyWithImpl(this._self, this._then);

  final CreateCommunityPackageRequest _self;
  final $Res Function(CreateCommunityPackageRequest) _then;

/// Create a copy of CreateCommunityPackageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? visibility = null,Object? items = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItemInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCommunityPackageRequest].
extension CreateCommunityPackageRequestPatterns on CreateCommunityPackageRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCommunityPackageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCommunityPackageRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCommunityPackageRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateCommunityPackageRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCommunityPackageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCommunityPackageRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  String coverImageUrl,  String visibility,  List<PackageItemInput> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCommunityPackageRequest() when $default != null:
return $default(_that.name,_that.description,_that.coverImageUrl,_that.visibility,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  String coverImageUrl,  String visibility,  List<PackageItemInput> items)  $default,) {final _that = this;
switch (_that) {
case _CreateCommunityPackageRequest():
return $default(_that.name,_that.description,_that.coverImageUrl,_that.visibility,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  String coverImageUrl,  String visibility,  List<PackageItemInput> items)?  $default,) {final _that = this;
switch (_that) {
case _CreateCommunityPackageRequest() when $default != null:
return $default(_that.name,_that.description,_that.coverImageUrl,_that.visibility,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCommunityPackageRequest implements CreateCommunityPackageRequest {
  const _CreateCommunityPackageRequest({required this.name, this.description = '', required this.coverImageUrl, required this.visibility, required final  List<PackageItemInput> items}): _items = items;
  factory _CreateCommunityPackageRequest.fromJson(Map<String, dynamic> json) => _$CreateCommunityPackageRequestFromJson(json);

@override final  String name;
@override@JsonKey() final  String description;
@override final  String coverImageUrl;
@override final  String visibility;
 final  List<PackageItemInput> _items;
@override List<PackageItemInput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CreateCommunityPackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCommunityPackageRequestCopyWith<_CreateCommunityPackageRequest> get copyWith => __$CreateCommunityPackageRequestCopyWithImpl<_CreateCommunityPackageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCommunityPackageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCommunityPackageRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,coverImageUrl,visibility,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CreateCommunityPackageRequest(name: $name, description: $description, coverImageUrl: $coverImageUrl, visibility: $visibility, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CreateCommunityPackageRequestCopyWith<$Res> implements $CreateCommunityPackageRequestCopyWith<$Res> {
  factory _$CreateCommunityPackageRequestCopyWith(_CreateCommunityPackageRequest value, $Res Function(_CreateCommunityPackageRequest) _then) = __$CreateCommunityPackageRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String coverImageUrl, String visibility, List<PackageItemInput> items
});




}
/// @nodoc
class __$CreateCommunityPackageRequestCopyWithImpl<$Res>
    implements _$CreateCommunityPackageRequestCopyWith<$Res> {
  __$CreateCommunityPackageRequestCopyWithImpl(this._self, this._then);

  final _CreateCommunityPackageRequest _self;
  final $Res Function(_CreateCommunityPackageRequest) _then;

/// Create a copy of CreateCommunityPackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? visibility = null,Object? items = null,}) {
  return _then(_CreateCommunityPackageRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItemInput>,
  ));
}


}


/// @nodoc
mixin _$CreateAdminPackageRequest {

 String get name; String get description; String get coverImageUrl; bool get isPopular; int get sortOrder; bool get isActive; List<PackageItemInput> get items;
/// Create a copy of CreateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAdminPackageRequestCopyWith<CreateAdminPackageRequest> get copyWith => _$CreateAdminPackageRequestCopyWithImpl<CreateAdminPackageRequest>(this as CreateAdminPackageRequest, _$identity);

  /// Serializes this CreateAdminPackageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAdminPackageRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,coverImageUrl,isPopular,sortOrder,isActive,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'CreateAdminPackageRequest(name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, sortOrder: $sortOrder, isActive: $isActive, items: $items)';
}


}

/// @nodoc
abstract mixin class $CreateAdminPackageRequestCopyWith<$Res>  {
  factory $CreateAdminPackageRequestCopyWith(CreateAdminPackageRequest value, $Res Function(CreateAdminPackageRequest) _then) = _$CreateAdminPackageRequestCopyWithImpl;
@useResult
$Res call({
 String name, String description, String coverImageUrl, bool isPopular, int sortOrder, bool isActive, List<PackageItemInput> items
});




}
/// @nodoc
class _$CreateAdminPackageRequestCopyWithImpl<$Res>
    implements $CreateAdminPackageRequestCopyWith<$Res> {
  _$CreateAdminPackageRequestCopyWithImpl(this._self, this._then);

  final CreateAdminPackageRequest _self;
  final $Res Function(CreateAdminPackageRequest) _then;

/// Create a copy of CreateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? isPopular = null,Object? sortOrder = null,Object? isActive = null,Object? items = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItemInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAdminPackageRequest].
extension CreateAdminPackageRequestPatterns on CreateAdminPackageRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAdminPackageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAdminPackageRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAdminPackageRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateAdminPackageRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAdminPackageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAdminPackageRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  String coverImageUrl,  bool isPopular,  int sortOrder,  bool isActive,  List<PackageItemInput> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAdminPackageRequest() when $default != null:
return $default(_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  String coverImageUrl,  bool isPopular,  int sortOrder,  bool isActive,  List<PackageItemInput> items)  $default,) {final _that = this;
switch (_that) {
case _CreateAdminPackageRequest():
return $default(_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  String coverImageUrl,  bool isPopular,  int sortOrder,  bool isActive,  List<PackageItemInput> items)?  $default,) {final _that = this;
switch (_that) {
case _CreateAdminPackageRequest() when $default != null:
return $default(_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAdminPackageRequest implements CreateAdminPackageRequest {
  const _CreateAdminPackageRequest({required this.name, this.description = '', required this.coverImageUrl, this.isPopular = false, this.sortOrder = 0, this.isActive = true, required final  List<PackageItemInput> items}): _items = items;
  factory _CreateAdminPackageRequest.fromJson(Map<String, dynamic> json) => _$CreateAdminPackageRequestFromJson(json);

@override final  String name;
@override@JsonKey() final  String description;
@override final  String coverImageUrl;
@override@JsonKey() final  bool isPopular;
@override@JsonKey() final  int sortOrder;
@override@JsonKey() final  bool isActive;
 final  List<PackageItemInput> _items;
@override List<PackageItemInput> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CreateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAdminPackageRequestCopyWith<_CreateAdminPackageRequest> get copyWith => __$CreateAdminPackageRequestCopyWithImpl<_CreateAdminPackageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAdminPackageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAdminPackageRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,coverImageUrl,isPopular,sortOrder,isActive,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'CreateAdminPackageRequest(name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, sortOrder: $sortOrder, isActive: $isActive, items: $items)';
}


}

/// @nodoc
abstract mixin class _$CreateAdminPackageRequestCopyWith<$Res> implements $CreateAdminPackageRequestCopyWith<$Res> {
  factory _$CreateAdminPackageRequestCopyWith(_CreateAdminPackageRequest value, $Res Function(_CreateAdminPackageRequest) _then) = __$CreateAdminPackageRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String coverImageUrl, bool isPopular, int sortOrder, bool isActive, List<PackageItemInput> items
});




}
/// @nodoc
class __$CreateAdminPackageRequestCopyWithImpl<$Res>
    implements _$CreateAdminPackageRequestCopyWith<$Res> {
  __$CreateAdminPackageRequestCopyWithImpl(this._self, this._then);

  final _CreateAdminPackageRequest _self;
  final $Res Function(_CreateAdminPackageRequest) _then;

/// Create a copy of CreateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? coverImageUrl = null,Object? isPopular = null,Object? sortOrder = null,Object? isActive = null,Object? items = null,}) {
  return _then(_CreateAdminPackageRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: null == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItemInput>,
  ));
}


}


/// @nodoc
mixin _$UpdateAdminPackageRequest {

 String? get name; String? get description; String? get coverImageUrl; bool? get isPopular; int? get sortOrder; bool? get isActive; List<PackageItemInput>? get items;
/// Create a copy of UpdateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAdminPackageRequestCopyWith<UpdateAdminPackageRequest> get copyWith => _$UpdateAdminPackageRequestCopyWithImpl<UpdateAdminPackageRequest>(this as UpdateAdminPackageRequest, _$identity);

  /// Serializes this UpdateAdminPackageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAdminPackageRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,coverImageUrl,isPopular,sortOrder,isActive,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'UpdateAdminPackageRequest(name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, sortOrder: $sortOrder, isActive: $isActive, items: $items)';
}


}

/// @nodoc
abstract mixin class $UpdateAdminPackageRequestCopyWith<$Res>  {
  factory $UpdateAdminPackageRequestCopyWith(UpdateAdminPackageRequest value, $Res Function(UpdateAdminPackageRequest) _then) = _$UpdateAdminPackageRequestCopyWithImpl;
@useResult
$Res call({
 String? name, String? description, String? coverImageUrl, bool? isPopular, int? sortOrder, bool? isActive, List<PackageItemInput>? items
});




}
/// @nodoc
class _$UpdateAdminPackageRequestCopyWithImpl<$Res>
    implements $UpdateAdminPackageRequestCopyWith<$Res> {
  _$UpdateAdminPackageRequestCopyWithImpl(this._self, this._then);

  final UpdateAdminPackageRequest _self;
  final $Res Function(UpdateAdminPackageRequest) _then;

/// Create a copy of UpdateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? description = freezed,Object? coverImageUrl = freezed,Object? isPopular = freezed,Object? sortOrder = freezed,Object? isActive = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverImageUrl: freezed == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isPopular: freezed == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItemInput>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateAdminPackageRequest].
extension UpdateAdminPackageRequestPatterns on UpdateAdminPackageRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateAdminPackageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateAdminPackageRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateAdminPackageRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateAdminPackageRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateAdminPackageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateAdminPackageRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? description,  String? coverImageUrl,  bool? isPopular,  int? sortOrder,  bool? isActive,  List<PackageItemInput>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateAdminPackageRequest() when $default != null:
return $default(_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? description,  String? coverImageUrl,  bool? isPopular,  int? sortOrder,  bool? isActive,  List<PackageItemInput>? items)  $default,) {final _that = this;
switch (_that) {
case _UpdateAdminPackageRequest():
return $default(_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? description,  String? coverImageUrl,  bool? isPopular,  int? sortOrder,  bool? isActive,  List<PackageItemInput>? items)?  $default,) {final _that = this;
switch (_that) {
case _UpdateAdminPackageRequest() when $default != null:
return $default(_that.name,_that.description,_that.coverImageUrl,_that.isPopular,_that.sortOrder,_that.isActive,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateAdminPackageRequest implements UpdateAdminPackageRequest {
  const _UpdateAdminPackageRequest({this.name, this.description, this.coverImageUrl, this.isPopular, this.sortOrder, this.isActive, final  List<PackageItemInput>? items}): _items = items;
  factory _UpdateAdminPackageRequest.fromJson(Map<String, dynamic> json) => _$UpdateAdminPackageRequestFromJson(json);

@override final  String? name;
@override final  String? description;
@override final  String? coverImageUrl;
@override final  bool? isPopular;
@override final  int? sortOrder;
@override final  bool? isActive;
 final  List<PackageItemInput>? _items;
@override List<PackageItemInput>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UpdateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAdminPackageRequestCopyWith<_UpdateAdminPackageRequest> get copyWith => __$UpdateAdminPackageRequestCopyWithImpl<_UpdateAdminPackageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateAdminPackageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAdminPackageRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,coverImageUrl,isPopular,sortOrder,isActive,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'UpdateAdminPackageRequest(name: $name, description: $description, coverImageUrl: $coverImageUrl, isPopular: $isPopular, sortOrder: $sortOrder, isActive: $isActive, items: $items)';
}


}

/// @nodoc
abstract mixin class _$UpdateAdminPackageRequestCopyWith<$Res> implements $UpdateAdminPackageRequestCopyWith<$Res> {
  factory _$UpdateAdminPackageRequestCopyWith(_UpdateAdminPackageRequest value, $Res Function(_UpdateAdminPackageRequest) _then) = __$UpdateAdminPackageRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? description, String? coverImageUrl, bool? isPopular, int? sortOrder, bool? isActive, List<PackageItemInput>? items
});




}
/// @nodoc
class __$UpdateAdminPackageRequestCopyWithImpl<$Res>
    implements _$UpdateAdminPackageRequestCopyWith<$Res> {
  __$UpdateAdminPackageRequestCopyWithImpl(this._self, this._then);

  final _UpdateAdminPackageRequest _self;
  final $Res Function(_UpdateAdminPackageRequest) _then;

/// Create a copy of UpdateAdminPackageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? description = freezed,Object? coverImageUrl = freezed,Object? isPopular = freezed,Object? sortOrder = freezed,Object? isActive = freezed,Object? items = freezed,}) {
  return _then(_UpdateAdminPackageRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverImageUrl: freezed == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isPopular: freezed == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PackageItemInput>?,
  ));
}


}


/// @nodoc
mixin _$CreateDiscountTierRequest {

 String get label; int get minSpendKobo; int get discountPercent; int get sortOrder; bool get isActive;
/// Create a copy of CreateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDiscountTierRequestCopyWith<CreateDiscountTierRequest> get copyWith => _$CreateDiscountTierRequestCopyWithImpl<CreateDiscountTierRequest>(this as CreateDiscountTierRequest, _$identity);

  /// Serializes this CreateDiscountTierRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDiscountTierRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.minSpendKobo, minSpendKobo) || other.minSpendKobo == minSpendKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,minSpendKobo,discountPercent,sortOrder,isActive);

@override
String toString() {
  return 'CreateDiscountTierRequest(label: $label, minSpendKobo: $minSpendKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CreateDiscountTierRequestCopyWith<$Res>  {
  factory $CreateDiscountTierRequestCopyWith(CreateDiscountTierRequest value, $Res Function(CreateDiscountTierRequest) _then) = _$CreateDiscountTierRequestCopyWithImpl;
@useResult
$Res call({
 String label, int minSpendKobo, int discountPercent, int sortOrder, bool isActive
});




}
/// @nodoc
class _$CreateDiscountTierRequestCopyWithImpl<$Res>
    implements $CreateDiscountTierRequestCopyWith<$Res> {
  _$CreateDiscountTierRequestCopyWithImpl(this._self, this._then);

  final CreateDiscountTierRequest _self;
  final $Res Function(CreateDiscountTierRequest) _then;

/// Create a copy of CreateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? minSpendKobo = null,Object? discountPercent = null,Object? sortOrder = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,minSpendKobo: null == minSpendKobo ? _self.minSpendKobo : minSpendKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDiscountTierRequest].
extension CreateDiscountTierRequestPatterns on CreateDiscountTierRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDiscountTierRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDiscountTierRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDiscountTierRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateDiscountTierRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDiscountTierRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDiscountTierRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  int minSpendKobo,  int discountPercent,  int sortOrder,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDiscountTierRequest() when $default != null:
return $default(_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  int minSpendKobo,  int discountPercent,  int sortOrder,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _CreateDiscountTierRequest():
return $default(_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  int minSpendKobo,  int discountPercent,  int sortOrder,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _CreateDiscountTierRequest() when $default != null:
return $default(_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDiscountTierRequest implements CreateDiscountTierRequest {
  const _CreateDiscountTierRequest({required this.label, required this.minSpendKobo, required this.discountPercent, this.sortOrder = 0, this.isActive = true});
  factory _CreateDiscountTierRequest.fromJson(Map<String, dynamic> json) => _$CreateDiscountTierRequestFromJson(json);

@override final  String label;
@override final  int minSpendKobo;
@override final  int discountPercent;
@override@JsonKey() final  int sortOrder;
@override@JsonKey() final  bool isActive;

/// Create a copy of CreateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDiscountTierRequestCopyWith<_CreateDiscountTierRequest> get copyWith => __$CreateDiscountTierRequestCopyWithImpl<_CreateDiscountTierRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDiscountTierRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDiscountTierRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.minSpendKobo, minSpendKobo) || other.minSpendKobo == minSpendKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,minSpendKobo,discountPercent,sortOrder,isActive);

@override
String toString() {
  return 'CreateDiscountTierRequest(label: $label, minSpendKobo: $minSpendKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CreateDiscountTierRequestCopyWith<$Res> implements $CreateDiscountTierRequestCopyWith<$Res> {
  factory _$CreateDiscountTierRequestCopyWith(_CreateDiscountTierRequest value, $Res Function(_CreateDiscountTierRequest) _then) = __$CreateDiscountTierRequestCopyWithImpl;
@override @useResult
$Res call({
 String label, int minSpendKobo, int discountPercent, int sortOrder, bool isActive
});




}
/// @nodoc
class __$CreateDiscountTierRequestCopyWithImpl<$Res>
    implements _$CreateDiscountTierRequestCopyWith<$Res> {
  __$CreateDiscountTierRequestCopyWithImpl(this._self, this._then);

  final _CreateDiscountTierRequest _self;
  final $Res Function(_CreateDiscountTierRequest) _then;

/// Create a copy of CreateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? minSpendKobo = null,Object? discountPercent = null,Object? sortOrder = null,Object? isActive = null,}) {
  return _then(_CreateDiscountTierRequest(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,minSpendKobo: null == minSpendKobo ? _self.minSpendKobo : minSpendKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$UpdateDiscountTierRequest {

 String? get label; int? get minSpendKobo; int? get discountPercent; int? get sortOrder; bool? get isActive;
/// Create a copy of UpdateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDiscountTierRequestCopyWith<UpdateDiscountTierRequest> get copyWith => _$UpdateDiscountTierRequestCopyWithImpl<UpdateDiscountTierRequest>(this as UpdateDiscountTierRequest, _$identity);

  /// Serializes this UpdateDiscountTierRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDiscountTierRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.minSpendKobo, minSpendKobo) || other.minSpendKobo == minSpendKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,minSpendKobo,discountPercent,sortOrder,isActive);

@override
String toString() {
  return 'UpdateDiscountTierRequest(label: $label, minSpendKobo: $minSpendKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $UpdateDiscountTierRequestCopyWith<$Res>  {
  factory $UpdateDiscountTierRequestCopyWith(UpdateDiscountTierRequest value, $Res Function(UpdateDiscountTierRequest) _then) = _$UpdateDiscountTierRequestCopyWithImpl;
@useResult
$Res call({
 String? label, int? minSpendKobo, int? discountPercent, int? sortOrder, bool? isActive
});




}
/// @nodoc
class _$UpdateDiscountTierRequestCopyWithImpl<$Res>
    implements $UpdateDiscountTierRequestCopyWith<$Res> {
  _$UpdateDiscountTierRequestCopyWithImpl(this._self, this._then);

  final UpdateDiscountTierRequest _self;
  final $Res Function(UpdateDiscountTierRequest) _then;

/// Create a copy of UpdateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? minSpendKobo = freezed,Object? discountPercent = freezed,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,minSpendKobo: freezed == minSpendKobo ? _self.minSpendKobo : minSpendKobo // ignore: cast_nullable_to_non_nullable
as int?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDiscountTierRequest].
extension UpdateDiscountTierRequestPatterns on UpdateDiscountTierRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDiscountTierRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDiscountTierRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDiscountTierRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDiscountTierRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDiscountTierRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDiscountTierRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? label,  int? minSpendKobo,  int? discountPercent,  int? sortOrder,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDiscountTierRequest() when $default != null:
return $default(_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? label,  int? minSpendKobo,  int? discountPercent,  int? sortOrder,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _UpdateDiscountTierRequest():
return $default(_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? label,  int? minSpendKobo,  int? discountPercent,  int? sortOrder,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDiscountTierRequest() when $default != null:
return $default(_that.label,_that.minSpendKobo,_that.discountPercent,_that.sortOrder,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDiscountTierRequest implements UpdateDiscountTierRequest {
  const _UpdateDiscountTierRequest({this.label, this.minSpendKobo, this.discountPercent, this.sortOrder, this.isActive});
  factory _UpdateDiscountTierRequest.fromJson(Map<String, dynamic> json) => _$UpdateDiscountTierRequestFromJson(json);

@override final  String? label;
@override final  int? minSpendKobo;
@override final  int? discountPercent;
@override final  int? sortOrder;
@override final  bool? isActive;

/// Create a copy of UpdateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDiscountTierRequestCopyWith<_UpdateDiscountTierRequest> get copyWith => __$UpdateDiscountTierRequestCopyWithImpl<_UpdateDiscountTierRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDiscountTierRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDiscountTierRequest&&(identical(other.label, label) || other.label == label)&&(identical(other.minSpendKobo, minSpendKobo) || other.minSpendKobo == minSpendKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,minSpendKobo,discountPercent,sortOrder,isActive);

@override
String toString() {
  return 'UpdateDiscountTierRequest(label: $label, minSpendKobo: $minSpendKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$UpdateDiscountTierRequestCopyWith<$Res> implements $UpdateDiscountTierRequestCopyWith<$Res> {
  factory _$UpdateDiscountTierRequestCopyWith(_UpdateDiscountTierRequest value, $Res Function(_UpdateDiscountTierRequest) _then) = __$UpdateDiscountTierRequestCopyWithImpl;
@override @useResult
$Res call({
 String? label, int? minSpendKobo, int? discountPercent, int? sortOrder, bool? isActive
});




}
/// @nodoc
class __$UpdateDiscountTierRequestCopyWithImpl<$Res>
    implements _$UpdateDiscountTierRequestCopyWith<$Res> {
  __$UpdateDiscountTierRequestCopyWithImpl(this._self, this._then);

  final _UpdateDiscountTierRequest _self;
  final $Res Function(_UpdateDiscountTierRequest) _then;

/// Create a copy of UpdateDiscountTierRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? minSpendKobo = freezed,Object? discountPercent = freezed,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_UpdateDiscountTierRequest(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,minSpendKobo: freezed == minSpendKobo ? _self.minSpendKobo : minSpendKobo // ignore: cast_nullable_to_non_nullable
as int?,discountPercent: freezed == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$ImageKitAuth {

 String get token; int get expire; String get signature; String get publicKey; String get urlEndpoint;
/// Create a copy of ImageKitAuth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageKitAuthCopyWith<ImageKitAuth> get copyWith => _$ImageKitAuthCopyWithImpl<ImageKitAuth>(this as ImageKitAuth, _$identity);

  /// Serializes this ImageKitAuth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageKitAuth&&(identical(other.token, token) || other.token == token)&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.urlEndpoint, urlEndpoint) || other.urlEndpoint == urlEndpoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,expire,signature,publicKey,urlEndpoint);

@override
String toString() {
  return 'ImageKitAuth(token: $token, expire: $expire, signature: $signature, publicKey: $publicKey, urlEndpoint: $urlEndpoint)';
}


}

/// @nodoc
abstract mixin class $ImageKitAuthCopyWith<$Res>  {
  factory $ImageKitAuthCopyWith(ImageKitAuth value, $Res Function(ImageKitAuth) _then) = _$ImageKitAuthCopyWithImpl;
@useResult
$Res call({
 String token, int expire, String signature, String publicKey, String urlEndpoint
});




}
/// @nodoc
class _$ImageKitAuthCopyWithImpl<$Res>
    implements $ImageKitAuthCopyWith<$Res> {
  _$ImageKitAuthCopyWithImpl(this._self, this._then);

  final ImageKitAuth _self;
  final $Res Function(ImageKitAuth) _then;

/// Create a copy of ImageKitAuth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? expire = null,Object? signature = null,Object? publicKey = null,Object? urlEndpoint = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as int,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String,urlEndpoint: null == urlEndpoint ? _self.urlEndpoint : urlEndpoint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageKitAuth].
extension ImageKitAuthPatterns on ImageKitAuth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageKitAuth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageKitAuth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageKitAuth value)  $default,){
final _that = this;
switch (_that) {
case _ImageKitAuth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageKitAuth value)?  $default,){
final _that = this;
switch (_that) {
case _ImageKitAuth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  int expire,  String signature,  String publicKey,  String urlEndpoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageKitAuth() when $default != null:
return $default(_that.token,_that.expire,_that.signature,_that.publicKey,_that.urlEndpoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  int expire,  String signature,  String publicKey,  String urlEndpoint)  $default,) {final _that = this;
switch (_that) {
case _ImageKitAuth():
return $default(_that.token,_that.expire,_that.signature,_that.publicKey,_that.urlEndpoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  int expire,  String signature,  String publicKey,  String urlEndpoint)?  $default,) {final _that = this;
switch (_that) {
case _ImageKitAuth() when $default != null:
return $default(_that.token,_that.expire,_that.signature,_that.publicKey,_that.urlEndpoint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImageKitAuth implements ImageKitAuth {
  const _ImageKitAuth({required this.token, required this.expire, required this.signature, required this.publicKey, required this.urlEndpoint});
  factory _ImageKitAuth.fromJson(Map<String, dynamic> json) => _$ImageKitAuthFromJson(json);

@override final  String token;
@override final  int expire;
@override final  String signature;
@override final  String publicKey;
@override final  String urlEndpoint;

/// Create a copy of ImageKitAuth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageKitAuthCopyWith<_ImageKitAuth> get copyWith => __$ImageKitAuthCopyWithImpl<_ImageKitAuth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageKitAuthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageKitAuth&&(identical(other.token, token) || other.token == token)&&(identical(other.expire, expire) || other.expire == expire)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.urlEndpoint, urlEndpoint) || other.urlEndpoint == urlEndpoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,expire,signature,publicKey,urlEndpoint);

@override
String toString() {
  return 'ImageKitAuth(token: $token, expire: $expire, signature: $signature, publicKey: $publicKey, urlEndpoint: $urlEndpoint)';
}


}

/// @nodoc
abstract mixin class _$ImageKitAuthCopyWith<$Res> implements $ImageKitAuthCopyWith<$Res> {
  factory _$ImageKitAuthCopyWith(_ImageKitAuth value, $Res Function(_ImageKitAuth) _then) = __$ImageKitAuthCopyWithImpl;
@override @useResult
$Res call({
 String token, int expire, String signature, String publicKey, String urlEndpoint
});




}
/// @nodoc
class __$ImageKitAuthCopyWithImpl<$Res>
    implements _$ImageKitAuthCopyWith<$Res> {
  __$ImageKitAuthCopyWithImpl(this._self, this._then);

  final _ImageKitAuth _self;
  final $Res Function(_ImageKitAuth) _then;

/// Create a copy of ImageKitAuth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? expire = null,Object? signature = null,Object? publicKey = null,Object? urlEndpoint = null,}) {
  return _then(_ImageKitAuth(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,expire: null == expire ? _self.expire : expire // ignore: cast_nullable_to_non_nullable
as int,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String,urlEndpoint: null == urlEndpoint ? _self.urlEndpoint : urlEndpoint // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MediaUploadResult {

 String get url; String get fileId; String get name; String? get thumbnailUrl;
/// Create a copy of MediaUploadResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaUploadResultCopyWith<MediaUploadResult> get copyWith => _$MediaUploadResultCopyWithImpl<MediaUploadResult>(this as MediaUploadResult, _$identity);

  /// Serializes this MediaUploadResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUploadResult&&(identical(other.url, url) || other.url == url)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.name, name) || other.name == name)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,fileId,name,thumbnailUrl);

@override
String toString() {
  return 'MediaUploadResult(url: $url, fileId: $fileId, name: $name, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $MediaUploadResultCopyWith<$Res>  {
  factory $MediaUploadResultCopyWith(MediaUploadResult value, $Res Function(MediaUploadResult) _then) = _$MediaUploadResultCopyWithImpl;
@useResult
$Res call({
 String url, String fileId, String name, String? thumbnailUrl
});




}
/// @nodoc
class _$MediaUploadResultCopyWithImpl<$Res>
    implements $MediaUploadResultCopyWith<$Res> {
  _$MediaUploadResultCopyWithImpl(this._self, this._then);

  final MediaUploadResult _self;
  final $Res Function(MediaUploadResult) _then;

/// Create a copy of MediaUploadResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? fileId = null,Object? name = null,Object? thumbnailUrl = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,fileId: null == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaUploadResult].
extension MediaUploadResultPatterns on MediaUploadResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaUploadResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaUploadResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaUploadResult value)  $default,){
final _that = this;
switch (_that) {
case _MediaUploadResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaUploadResult value)?  $default,){
final _that = this;
switch (_that) {
case _MediaUploadResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String fileId,  String name,  String? thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaUploadResult() when $default != null:
return $default(_that.url,_that.fileId,_that.name,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String fileId,  String name,  String? thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _MediaUploadResult():
return $default(_that.url,_that.fileId,_that.name,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String fileId,  String name,  String? thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _MediaUploadResult() when $default != null:
return $default(_that.url,_that.fileId,_that.name,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaUploadResult implements MediaUploadResult {
  const _MediaUploadResult({required this.url, required this.fileId, required this.name, this.thumbnailUrl});
  factory _MediaUploadResult.fromJson(Map<String, dynamic> json) => _$MediaUploadResultFromJson(json);

@override final  String url;
@override final  String fileId;
@override final  String name;
@override final  String? thumbnailUrl;

/// Create a copy of MediaUploadResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaUploadResultCopyWith<_MediaUploadResult> get copyWith => __$MediaUploadResultCopyWithImpl<_MediaUploadResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaUploadResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaUploadResult&&(identical(other.url, url) || other.url == url)&&(identical(other.fileId, fileId) || other.fileId == fileId)&&(identical(other.name, name) || other.name == name)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,fileId,name,thumbnailUrl);

@override
String toString() {
  return 'MediaUploadResult(url: $url, fileId: $fileId, name: $name, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$MediaUploadResultCopyWith<$Res> implements $MediaUploadResultCopyWith<$Res> {
  factory _$MediaUploadResultCopyWith(_MediaUploadResult value, $Res Function(_MediaUploadResult) _then) = __$MediaUploadResultCopyWithImpl;
@override @useResult
$Res call({
 String url, String fileId, String name, String? thumbnailUrl
});




}
/// @nodoc
class __$MediaUploadResultCopyWithImpl<$Res>
    implements _$MediaUploadResultCopyWith<$Res> {
  __$MediaUploadResultCopyWithImpl(this._self, this._then);

  final _MediaUploadResult _self;
  final $Res Function(_MediaUploadResult) _then;

/// Create a copy of MediaUploadResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? fileId = null,Object? name = null,Object? thumbnailUrl = freezed,}) {
  return _then(_MediaUploadResult(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,fileId: null == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
