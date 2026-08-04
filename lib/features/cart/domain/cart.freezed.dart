// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cart {

 String get id; List<CartItem> get items; int get itemCount; int get subtotalKobo; int get freeDeliveryMinKobo; int get deliveryFeeKobo; int get appliedDeliveryFeeKobo; int get amountUntilFreeDeliveryKobo; bool get qualifiesForFreeDelivery; int get totalKobo; String get updatedAt;
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCopyWith<Cart> get copyWith => _$CartCopyWithImpl<Cart>(this as Cart, _$identity);

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cart&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.subtotalKobo, subtotalKobo) || other.subtotalKobo == subtotalKobo)&&(identical(other.freeDeliveryMinKobo, freeDeliveryMinKobo) || other.freeDeliveryMinKobo == freeDeliveryMinKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.appliedDeliveryFeeKobo, appliedDeliveryFeeKobo) || other.appliedDeliveryFeeKobo == appliedDeliveryFeeKobo)&&(identical(other.amountUntilFreeDeliveryKobo, amountUntilFreeDeliveryKobo) || other.amountUntilFreeDeliveryKobo == amountUntilFreeDeliveryKobo)&&(identical(other.qualifiesForFreeDelivery, qualifiesForFreeDelivery) || other.qualifiesForFreeDelivery == qualifiesForFreeDelivery)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(items),itemCount,subtotalKobo,freeDeliveryMinKobo,deliveryFeeKobo,appliedDeliveryFeeKobo,amountUntilFreeDeliveryKobo,qualifiesForFreeDelivery,totalKobo,updatedAt);

@override
String toString() {
  return 'Cart(id: $id, items: $items, itemCount: $itemCount, subtotalKobo: $subtotalKobo, freeDeliveryMinKobo: $freeDeliveryMinKobo, deliveryFeeKobo: $deliveryFeeKobo, appliedDeliveryFeeKobo: $appliedDeliveryFeeKobo, amountUntilFreeDeliveryKobo: $amountUntilFreeDeliveryKobo, qualifiesForFreeDelivery: $qualifiesForFreeDelivery, totalKobo: $totalKobo, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CartCopyWith<$Res>  {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) = _$CartCopyWithImpl;
@useResult
$Res call({
 String id, List<CartItem> items, int itemCount, int subtotalKobo, int freeDeliveryMinKobo, int deliveryFeeKobo, int appliedDeliveryFeeKobo, int amountUntilFreeDeliveryKobo, bool qualifiesForFreeDelivery, int totalKobo, String updatedAt
});




}
/// @nodoc
class _$CartCopyWithImpl<$Res>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? items = null,Object? itemCount = null,Object? subtotalKobo = null,Object? freeDeliveryMinKobo = null,Object? deliveryFeeKobo = null,Object? appliedDeliveryFeeKobo = null,Object? amountUntilFreeDeliveryKobo = null,Object? qualifiesForFreeDelivery = null,Object? totalKobo = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,subtotalKobo: null == subtotalKobo ? _self.subtotalKobo : subtotalKobo // ignore: cast_nullable_to_non_nullable
as int,freeDeliveryMinKobo: null == freeDeliveryMinKobo ? _self.freeDeliveryMinKobo : freeDeliveryMinKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,appliedDeliveryFeeKobo: null == appliedDeliveryFeeKobo ? _self.appliedDeliveryFeeKobo : appliedDeliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,amountUntilFreeDeliveryKobo: null == amountUntilFreeDeliveryKobo ? _self.amountUntilFreeDeliveryKobo : amountUntilFreeDeliveryKobo // ignore: cast_nullable_to_non_nullable
as int,qualifiesForFreeDelivery: null == qualifiesForFreeDelivery ? _self.qualifiesForFreeDelivery : qualifiesForFreeDelivery // ignore: cast_nullable_to_non_nullable
as bool,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Cart].
extension CartPatterns on Cart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cart value)  $default,){
final _that = this;
switch (_that) {
case _Cart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cart value)?  $default,){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<CartItem> items,  int itemCount,  int subtotalKobo,  int freeDeliveryMinKobo,  int deliveryFeeKobo,  int appliedDeliveryFeeKobo,  int amountUntilFreeDeliveryKobo,  bool qualifiesForFreeDelivery,  int totalKobo,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.id,_that.items,_that.itemCount,_that.subtotalKobo,_that.freeDeliveryMinKobo,_that.deliveryFeeKobo,_that.appliedDeliveryFeeKobo,_that.amountUntilFreeDeliveryKobo,_that.qualifiesForFreeDelivery,_that.totalKobo,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<CartItem> items,  int itemCount,  int subtotalKobo,  int freeDeliveryMinKobo,  int deliveryFeeKobo,  int appliedDeliveryFeeKobo,  int amountUntilFreeDeliveryKobo,  bool qualifiesForFreeDelivery,  int totalKobo,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Cart():
return $default(_that.id,_that.items,_that.itemCount,_that.subtotalKobo,_that.freeDeliveryMinKobo,_that.deliveryFeeKobo,_that.appliedDeliveryFeeKobo,_that.amountUntilFreeDeliveryKobo,_that.qualifiesForFreeDelivery,_that.totalKobo,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<CartItem> items,  int itemCount,  int subtotalKobo,  int freeDeliveryMinKobo,  int deliveryFeeKobo,  int appliedDeliveryFeeKobo,  int amountUntilFreeDeliveryKobo,  bool qualifiesForFreeDelivery,  int totalKobo,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.id,_that.items,_that.itemCount,_that.subtotalKobo,_that.freeDeliveryMinKobo,_that.deliveryFeeKobo,_that.appliedDeliveryFeeKobo,_that.amountUntilFreeDeliveryKobo,_that.qualifiesForFreeDelivery,_that.totalKobo,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cart implements Cart {
  const _Cart({required this.id, required final  List<CartItem> items, required this.itemCount, required this.subtotalKobo, required this.freeDeliveryMinKobo, required this.deliveryFeeKobo, required this.appliedDeliveryFeeKobo, required this.amountUntilFreeDeliveryKobo, required this.qualifiesForFreeDelivery, required this.totalKobo, required this.updatedAt}): _items = items;
  factory _Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

@override final  String id;
 final  List<CartItem> _items;
@override List<CartItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int itemCount;
@override final  int subtotalKobo;
@override final  int freeDeliveryMinKobo;
@override final  int deliveryFeeKobo;
@override final  int appliedDeliveryFeeKobo;
@override final  int amountUntilFreeDeliveryKobo;
@override final  bool qualifiesForFreeDelivery;
@override final  int totalKobo;
@override final  String updatedAt;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCopyWith<_Cart> get copyWith => __$CartCopyWithImpl<_Cart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cart&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.subtotalKobo, subtotalKobo) || other.subtotalKobo == subtotalKobo)&&(identical(other.freeDeliveryMinKobo, freeDeliveryMinKobo) || other.freeDeliveryMinKobo == freeDeliveryMinKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.appliedDeliveryFeeKobo, appliedDeliveryFeeKobo) || other.appliedDeliveryFeeKobo == appliedDeliveryFeeKobo)&&(identical(other.amountUntilFreeDeliveryKobo, amountUntilFreeDeliveryKobo) || other.amountUntilFreeDeliveryKobo == amountUntilFreeDeliveryKobo)&&(identical(other.qualifiesForFreeDelivery, qualifiesForFreeDelivery) || other.qualifiesForFreeDelivery == qualifiesForFreeDelivery)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_items),itemCount,subtotalKobo,freeDeliveryMinKobo,deliveryFeeKobo,appliedDeliveryFeeKobo,amountUntilFreeDeliveryKobo,qualifiesForFreeDelivery,totalKobo,updatedAt);

@override
String toString() {
  return 'Cart(id: $id, items: $items, itemCount: $itemCount, subtotalKobo: $subtotalKobo, freeDeliveryMinKobo: $freeDeliveryMinKobo, deliveryFeeKobo: $deliveryFeeKobo, appliedDeliveryFeeKobo: $appliedDeliveryFeeKobo, amountUntilFreeDeliveryKobo: $amountUntilFreeDeliveryKobo, qualifiesForFreeDelivery: $qualifiesForFreeDelivery, totalKobo: $totalKobo, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) = __$CartCopyWithImpl;
@override @useResult
$Res call({
 String id, List<CartItem> items, int itemCount, int subtotalKobo, int freeDeliveryMinKobo, int deliveryFeeKobo, int appliedDeliveryFeeKobo, int amountUntilFreeDeliveryKobo, bool qualifiesForFreeDelivery, int totalKobo, String updatedAt
});




}
/// @nodoc
class __$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? items = null,Object? itemCount = null,Object? subtotalKobo = null,Object? freeDeliveryMinKobo = null,Object? deliveryFeeKobo = null,Object? appliedDeliveryFeeKobo = null,Object? amountUntilFreeDeliveryKobo = null,Object? qualifiesForFreeDelivery = null,Object? totalKobo = null,Object? updatedAt = null,}) {
  return _then(_Cart(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,subtotalKobo: null == subtotalKobo ? _self.subtotalKobo : subtotalKobo // ignore: cast_nullable_to_non_nullable
as int,freeDeliveryMinKobo: null == freeDeliveryMinKobo ? _self.freeDeliveryMinKobo : freeDeliveryMinKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,appliedDeliveryFeeKobo: null == appliedDeliveryFeeKobo ? _self.appliedDeliveryFeeKobo : appliedDeliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,amountUntilFreeDeliveryKobo: null == amountUntilFreeDeliveryKobo ? _self.amountUntilFreeDeliveryKobo : amountUntilFreeDeliveryKobo // ignore: cast_nullable_to_non_nullable
as int,qualifiesForFreeDelivery: null == qualifiesForFreeDelivery ? _self.qualifiesForFreeDelivery : qualifiesForFreeDelivery // ignore: cast_nullable_to_non_nullable
as bool,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
