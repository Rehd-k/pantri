// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WishlistItem {

 String get id; String get productId; String get name; String get brand; String get packageLabel; String get imageUrl; int get priceKobo; int get retailPriceKobo; int get bulkAllocationClaimedPercent; int get priceKoboAtSave; bool get priceDropped; int get dropAmountKobo; String get savedAt;
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemCopyWith<WishlistItem> get copyWith => _$WishlistItemCopyWithImpl<WishlistItem>(this as WishlistItem, _$identity);

  /// Serializes this WishlistItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&(identical(other.priceKoboAtSave, priceKoboAtSave) || other.priceKoboAtSave == priceKoboAtSave)&&(identical(other.priceDropped, priceDropped) || other.priceDropped == priceDropped)&&(identical(other.dropAmountKobo, dropAmountKobo) || other.dropAmountKobo == dropAmountKobo)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,bulkAllocationClaimedPercent,priceKoboAtSave,priceDropped,dropAmountKobo,savedAt);

@override
String toString() {
  return 'WishlistItem(id: $id, productId: $productId, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, priceKoboAtSave: $priceKoboAtSave, priceDropped: $priceDropped, dropAmountKobo: $dropAmountKobo, savedAt: $savedAt)';
}


}

/// @nodoc
abstract mixin class $WishlistItemCopyWith<$Res>  {
  factory $WishlistItemCopyWith(WishlistItem value, $Res Function(WishlistItem) _then) = _$WishlistItemCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String name, String brand, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int bulkAllocationClaimedPercent, int priceKoboAtSave, bool priceDropped, int dropAmountKobo, String savedAt
});




}
/// @nodoc
class _$WishlistItemCopyWithImpl<$Res>
    implements $WishlistItemCopyWith<$Res> {
  _$WishlistItemCopyWithImpl(this._self, this._then);

  final WishlistItem _self;
  final $Res Function(WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? bulkAllocationClaimedPercent = null,Object? priceKoboAtSave = null,Object? priceDropped = null,Object? dropAmountKobo = null,Object? savedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,bulkAllocationClaimedPercent: null == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int,priceKoboAtSave: null == priceKoboAtSave ? _self.priceKoboAtSave : priceKoboAtSave // ignore: cast_nullable_to_non_nullable
as int,priceDropped: null == priceDropped ? _self.priceDropped : priceDropped // ignore: cast_nullable_to_non_nullable
as bool,dropAmountKobo: null == dropAmountKobo ? _self.dropAmountKobo : dropAmountKobo // ignore: cast_nullable_to_non_nullable
as int,savedAt: null == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WishlistItem].
extension WishlistItemPatterns on WishlistItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistItem value)  $default,){
final _that = this;
switch (_that) {
case _WishlistItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistItem value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int bulkAllocationClaimedPercent,  int priceKoboAtSave,  bool priceDropped,  int dropAmountKobo,  String savedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.bulkAllocationClaimedPercent,_that.priceKoboAtSave,_that.priceDropped,_that.dropAmountKobo,_that.savedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int bulkAllocationClaimedPercent,  int priceKoboAtSave,  bool priceDropped,  int dropAmountKobo,  String savedAt)  $default,) {final _that = this;
switch (_that) {
case _WishlistItem():
return $default(_that.id,_that.productId,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.bulkAllocationClaimedPercent,_that.priceKoboAtSave,_that.priceDropped,_that.dropAmountKobo,_that.savedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int bulkAllocationClaimedPercent,  int priceKoboAtSave,  bool priceDropped,  int dropAmountKobo,  String savedAt)?  $default,) {final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
return $default(_that.id,_that.productId,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.bulkAllocationClaimedPercent,_that.priceKoboAtSave,_that.priceDropped,_that.dropAmountKobo,_that.savedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WishlistItem implements WishlistItem {
  const _WishlistItem({required this.id, required this.productId, required this.name, required this.brand, required this.packageLabel, required this.imageUrl, required this.priceKobo, required this.retailPriceKobo, required this.bulkAllocationClaimedPercent, required this.priceKoboAtSave, required this.priceDropped, required this.dropAmountKobo, required this.savedAt});
  factory _WishlistItem.fromJson(Map<String, dynamic> json) => _$WishlistItemFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String name;
@override final  String brand;
@override final  String packageLabel;
@override final  String imageUrl;
@override final  int priceKobo;
@override final  int retailPriceKobo;
@override final  int bulkAllocationClaimedPercent;
@override final  int priceKoboAtSave;
@override final  bool priceDropped;
@override final  int dropAmountKobo;
@override final  String savedAt;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistItemCopyWith<_WishlistItem> get copyWith => __$WishlistItemCopyWithImpl<_WishlistItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&(identical(other.priceKoboAtSave, priceKoboAtSave) || other.priceKoboAtSave == priceKoboAtSave)&&(identical(other.priceDropped, priceDropped) || other.priceDropped == priceDropped)&&(identical(other.dropAmountKobo, dropAmountKobo) || other.dropAmountKobo == dropAmountKobo)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,bulkAllocationClaimedPercent,priceKoboAtSave,priceDropped,dropAmountKobo,savedAt);

@override
String toString() {
  return 'WishlistItem(id: $id, productId: $productId, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, priceKoboAtSave: $priceKoboAtSave, priceDropped: $priceDropped, dropAmountKobo: $dropAmountKobo, savedAt: $savedAt)';
}


}

/// @nodoc
abstract mixin class _$WishlistItemCopyWith<$Res> implements $WishlistItemCopyWith<$Res> {
  factory _$WishlistItemCopyWith(_WishlistItem value, $Res Function(_WishlistItem) _then) = __$WishlistItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String name, String brand, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int bulkAllocationClaimedPercent, int priceKoboAtSave, bool priceDropped, int dropAmountKobo, String savedAt
});




}
/// @nodoc
class __$WishlistItemCopyWithImpl<$Res>
    implements _$WishlistItemCopyWith<$Res> {
  __$WishlistItemCopyWithImpl(this._self, this._then);

  final _WishlistItem _self;
  final $Res Function(_WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? bulkAllocationClaimedPercent = null,Object? priceKoboAtSave = null,Object? priceDropped = null,Object? dropAmountKobo = null,Object? savedAt = null,}) {
  return _then(_WishlistItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,bulkAllocationClaimedPercent: null == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int,priceKoboAtSave: null == priceKoboAtSave ? _self.priceKoboAtSave : priceKoboAtSave // ignore: cast_nullable_to_non_nullable
as int,priceDropped: null == priceDropped ? _self.priceDropped : priceDropped // ignore: cast_nullable_to_non_nullable
as bool,dropAmountKobo: null == dropAmountKobo ? _self.dropAmountKobo : dropAmountKobo // ignore: cast_nullable_to_non_nullable
as int,savedAt: null == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$WishlistListResponse {

 List<WishlistItem> get items; int get total; int get priceDropCount;
/// Create a copy of WishlistListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistListResponseCopyWith<WishlistListResponse> get copyWith => _$WishlistListResponseCopyWithImpl<WishlistListResponse>(this as WishlistListResponse, _$identity);

  /// Serializes this WishlistListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistListResponse&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.priceDropCount, priceDropCount) || other.priceDropCount == priceDropCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),total,priceDropCount);

@override
String toString() {
  return 'WishlistListResponse(items: $items, total: $total, priceDropCount: $priceDropCount)';
}


}

/// @nodoc
abstract mixin class $WishlistListResponseCopyWith<$Res>  {
  factory $WishlistListResponseCopyWith(WishlistListResponse value, $Res Function(WishlistListResponse) _then) = _$WishlistListResponseCopyWithImpl;
@useResult
$Res call({
 List<WishlistItem> items, int total, int priceDropCount
});




}
/// @nodoc
class _$WishlistListResponseCopyWithImpl<$Res>
    implements $WishlistListResponseCopyWith<$Res> {
  _$WishlistListResponseCopyWithImpl(this._self, this._then);

  final WishlistListResponse _self;
  final $Res Function(WishlistListResponse) _then;

/// Create a copy of WishlistListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,Object? priceDropCount = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,priceDropCount: null == priceDropCount ? _self.priceDropCount : priceDropCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WishlistListResponse].
extension WishlistListResponsePatterns on WishlistListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistListResponse value)  $default,){
final _that = this;
switch (_that) {
case _WishlistListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WishlistItem> items,  int total,  int priceDropCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistListResponse() when $default != null:
return $default(_that.items,_that.total,_that.priceDropCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WishlistItem> items,  int total,  int priceDropCount)  $default,) {final _that = this;
switch (_that) {
case _WishlistListResponse():
return $default(_that.items,_that.total,_that.priceDropCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WishlistItem> items,  int total,  int priceDropCount)?  $default,) {final _that = this;
switch (_that) {
case _WishlistListResponse() when $default != null:
return $default(_that.items,_that.total,_that.priceDropCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WishlistListResponse implements WishlistListResponse {
  const _WishlistListResponse({required final  List<WishlistItem> items, required this.total, required this.priceDropCount}): _items = items;
  factory _WishlistListResponse.fromJson(Map<String, dynamic> json) => _$WishlistListResponseFromJson(json);

 final  List<WishlistItem> _items;
@override List<WishlistItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;
@override final  int priceDropCount;

/// Create a copy of WishlistListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistListResponseCopyWith<_WishlistListResponse> get copyWith => __$WishlistListResponseCopyWithImpl<_WishlistListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistListResponse&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.priceDropCount, priceDropCount) || other.priceDropCount == priceDropCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,priceDropCount);

@override
String toString() {
  return 'WishlistListResponse(items: $items, total: $total, priceDropCount: $priceDropCount)';
}


}

/// @nodoc
abstract mixin class _$WishlistListResponseCopyWith<$Res> implements $WishlistListResponseCopyWith<$Res> {
  factory _$WishlistListResponseCopyWith(_WishlistListResponse value, $Res Function(_WishlistListResponse) _then) = __$WishlistListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<WishlistItem> items, int total, int priceDropCount
});




}
/// @nodoc
class __$WishlistListResponseCopyWithImpl<$Res>
    implements _$WishlistListResponseCopyWith<$Res> {
  __$WishlistListResponseCopyWithImpl(this._self, this._then);

  final _WishlistListResponse _self;
  final $Res Function(_WishlistListResponse) _then;

/// Create a copy of WishlistListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,Object? priceDropCount = null,}) {
  return _then(_WishlistListResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,priceDropCount: null == priceDropCount ? _self.priceDropCount : priceDropCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WishlistStatus {

 bool get saved;
/// Create a copy of WishlistStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistStatusCopyWith<WishlistStatus> get copyWith => _$WishlistStatusCopyWithImpl<WishlistStatus>(this as WishlistStatus, _$identity);

  /// Serializes this WishlistStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistStatus&&(identical(other.saved, saved) || other.saved == saved));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,saved);

@override
String toString() {
  return 'WishlistStatus(saved: $saved)';
}


}

/// @nodoc
abstract mixin class $WishlistStatusCopyWith<$Res>  {
  factory $WishlistStatusCopyWith(WishlistStatus value, $Res Function(WishlistStatus) _then) = _$WishlistStatusCopyWithImpl;
@useResult
$Res call({
 bool saved
});




}
/// @nodoc
class _$WishlistStatusCopyWithImpl<$Res>
    implements $WishlistStatusCopyWith<$Res> {
  _$WishlistStatusCopyWithImpl(this._self, this._then);

  final WishlistStatus _self;
  final $Res Function(WishlistStatus) _then;

/// Create a copy of WishlistStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? saved = null,}) {
  return _then(_self.copyWith(
saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WishlistStatus].
extension WishlistStatusPatterns on WishlistStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistStatus value)  $default,){
final _that = this;
switch (_that) {
case _WishlistStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistStatus value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool saved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistStatus() when $default != null:
return $default(_that.saved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool saved)  $default,) {final _that = this;
switch (_that) {
case _WishlistStatus():
return $default(_that.saved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool saved)?  $default,) {final _that = this;
switch (_that) {
case _WishlistStatus() when $default != null:
return $default(_that.saved);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WishlistStatus implements WishlistStatus {
  const _WishlistStatus({required this.saved});
  factory _WishlistStatus.fromJson(Map<String, dynamic> json) => _$WishlistStatusFromJson(json);

@override final  bool saved;

/// Create a copy of WishlistStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistStatusCopyWith<_WishlistStatus> get copyWith => __$WishlistStatusCopyWithImpl<_WishlistStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistStatus&&(identical(other.saved, saved) || other.saved == saved));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,saved);

@override
String toString() {
  return 'WishlistStatus(saved: $saved)';
}


}

/// @nodoc
abstract mixin class _$WishlistStatusCopyWith<$Res> implements $WishlistStatusCopyWith<$Res> {
  factory _$WishlistStatusCopyWith(_WishlistStatus value, $Res Function(_WishlistStatus) _then) = __$WishlistStatusCopyWithImpl;
@override @useResult
$Res call({
 bool saved
});




}
/// @nodoc
class __$WishlistStatusCopyWithImpl<$Res>
    implements _$WishlistStatusCopyWith<$Res> {
  __$WishlistStatusCopyWithImpl(this._self, this._then);

  final _WishlistStatus _self;
  final $Res Function(_WishlistStatus) _then;

/// Create a copy of WishlistStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? saved = null,}) {
  return _then(_WishlistStatus(
saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
