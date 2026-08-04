// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductListResponse {

 List<MarketplaceProduct> get items; int get total;
/// Create a copy of ProductListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductListResponseCopyWith<ProductListResponse> get copyWith => _$ProductListResponseCopyWithImpl<ProductListResponse>(this as ProductListResponse, _$identity);

  /// Serializes this ProductListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductListResponse&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),total);

@override
String toString() {
  return 'ProductListResponse(items: $items, total: $total)';
}


}

/// @nodoc
abstract mixin class $ProductListResponseCopyWith<$Res>  {
  factory $ProductListResponseCopyWith(ProductListResponse value, $Res Function(ProductListResponse) _then) = _$ProductListResponseCopyWithImpl;
@useResult
$Res call({
 List<MarketplaceProduct> items, int total
});




}
/// @nodoc
class _$ProductListResponseCopyWithImpl<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  _$ProductListResponseCopyWithImpl(this._self, this._then);

  final ProductListResponse _self;
  final $Res Function(ProductListResponse) _then;

/// Create a copy of ProductListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MarketplaceProduct>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductListResponse].
extension ProductListResponsePatterns on ProductListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MarketplaceProduct> items,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductListResponse() when $default != null:
return $default(_that.items,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MarketplaceProduct> items,  int total)  $default,) {final _that = this;
switch (_that) {
case _ProductListResponse():
return $default(_that.items,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MarketplaceProduct> items,  int total)?  $default,) {final _that = this;
switch (_that) {
case _ProductListResponse() when $default != null:
return $default(_that.items,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductListResponse implements ProductListResponse {
  const _ProductListResponse({required final  List<MarketplaceProduct> items, required this.total}): _items = items;
  factory _ProductListResponse.fromJson(Map<String, dynamic> json) => _$ProductListResponseFromJson(json);

 final  List<MarketplaceProduct> _items;
@override List<MarketplaceProduct> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;

/// Create a copy of ProductListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductListResponseCopyWith<_ProductListResponse> get copyWith => __$ProductListResponseCopyWithImpl<_ProductListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductListResponse&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total);

@override
String toString() {
  return 'ProductListResponse(items: $items, total: $total)';
}


}

/// @nodoc
abstract mixin class _$ProductListResponseCopyWith<$Res> implements $ProductListResponseCopyWith<$Res> {
  factory _$ProductListResponseCopyWith(_ProductListResponse value, $Res Function(_ProductListResponse) _then) = __$ProductListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MarketplaceProduct> items, int total
});




}
/// @nodoc
class __$ProductListResponseCopyWithImpl<$Res>
    implements _$ProductListResponseCopyWith<$Res> {
  __$ProductListResponseCopyWithImpl(this._self, this._then);

  final _ProductListResponse _self;
  final $Res Function(_ProductListResponse) _then;

/// Create a copy of ProductListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,}) {
  return _then(_ProductListResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MarketplaceProduct>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
