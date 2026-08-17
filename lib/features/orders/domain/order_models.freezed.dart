// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeOrderItem {

 String get id; String get productId; String? get packId; String get name; String get brand; String get packageLabel; int get quantity; int get fulfilledQuantity; int get unitPriceKobo; int get lineTotalKobo;
/// Create a copy of EmployeeOrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeOrderItemCopyWith<EmployeeOrderItem> get copyWith => _$EmployeeOrderItemCopyWithImpl<EmployeeOrderItem>(this as EmployeeOrderItem, _$identity);

  /// Serializes this EmployeeOrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeOrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.fulfilledQuantity, fulfilledQuantity) || other.fulfilledQuantity == fulfilledQuantity)&&(identical(other.unitPriceKobo, unitPriceKobo) || other.unitPriceKobo == unitPriceKobo)&&(identical(other.lineTotalKobo, lineTotalKobo) || other.lineTotalKobo == lineTotalKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,packId,name,brand,packageLabel,quantity,fulfilledQuantity,unitPriceKobo,lineTotalKobo);

@override
String toString() {
  return 'EmployeeOrderItem(id: $id, productId: $productId, packId: $packId, name: $name, brand: $brand, packageLabel: $packageLabel, quantity: $quantity, fulfilledQuantity: $fulfilledQuantity, unitPriceKobo: $unitPriceKobo, lineTotalKobo: $lineTotalKobo)';
}


}

/// @nodoc
abstract mixin class $EmployeeOrderItemCopyWith<$Res>  {
  factory $EmployeeOrderItemCopyWith(EmployeeOrderItem value, $Res Function(EmployeeOrderItem) _then) = _$EmployeeOrderItemCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String? packId, String name, String brand, String packageLabel, int quantity, int fulfilledQuantity, int unitPriceKobo, int lineTotalKobo
});




}
/// @nodoc
class _$EmployeeOrderItemCopyWithImpl<$Res>
    implements $EmployeeOrderItemCopyWith<$Res> {
  _$EmployeeOrderItemCopyWithImpl(this._self, this._then);

  final EmployeeOrderItem _self;
  final $Res Function(EmployeeOrderItem) _then;

/// Create a copy of EmployeeOrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? packId = freezed,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? quantity = null,Object? fulfilledQuantity = null,Object? unitPriceKobo = null,Object? lineTotalKobo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,fulfilledQuantity: null == fulfilledQuantity ? _self.fulfilledQuantity : fulfilledQuantity // ignore: cast_nullable_to_non_nullable
as int,unitPriceKobo: null == unitPriceKobo ? _self.unitPriceKobo : unitPriceKobo // ignore: cast_nullable_to_non_nullable
as int,lineTotalKobo: null == lineTotalKobo ? _self.lineTotalKobo : lineTotalKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeOrderItem].
extension EmployeeOrderItemPatterns on EmployeeOrderItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeOrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeOrderItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeOrderItem value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeOrderItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeOrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeOrderItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String? packId,  String name,  String brand,  String packageLabel,  int quantity,  int fulfilledQuantity,  int unitPriceKobo,  int lineTotalKobo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeOrderItem() when $default != null:
return $default(_that.id,_that.productId,_that.packId,_that.name,_that.brand,_that.packageLabel,_that.quantity,_that.fulfilledQuantity,_that.unitPriceKobo,_that.lineTotalKobo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String? packId,  String name,  String brand,  String packageLabel,  int quantity,  int fulfilledQuantity,  int unitPriceKobo,  int lineTotalKobo)  $default,) {final _that = this;
switch (_that) {
case _EmployeeOrderItem():
return $default(_that.id,_that.productId,_that.packId,_that.name,_that.brand,_that.packageLabel,_that.quantity,_that.fulfilledQuantity,_that.unitPriceKobo,_that.lineTotalKobo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String? packId,  String name,  String brand,  String packageLabel,  int quantity,  int fulfilledQuantity,  int unitPriceKobo,  int lineTotalKobo)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeOrderItem() when $default != null:
return $default(_that.id,_that.productId,_that.packId,_that.name,_that.brand,_that.packageLabel,_that.quantity,_that.fulfilledQuantity,_that.unitPriceKobo,_that.lineTotalKobo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeOrderItem implements EmployeeOrderItem {
  const _EmployeeOrderItem({required this.id, required this.productId, this.packId, required this.name, required this.brand, required this.packageLabel, required this.quantity, required this.fulfilledQuantity, required this.unitPriceKobo, required this.lineTotalKobo});
  factory _EmployeeOrderItem.fromJson(Map<String, dynamic> json) => _$EmployeeOrderItemFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String? packId;
@override final  String name;
@override final  String brand;
@override final  String packageLabel;
@override final  int quantity;
@override final  int fulfilledQuantity;
@override final  int unitPriceKobo;
@override final  int lineTotalKobo;

/// Create a copy of EmployeeOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeOrderItemCopyWith<_EmployeeOrderItem> get copyWith => __$EmployeeOrderItemCopyWithImpl<_EmployeeOrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeOrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeOrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packId, packId) || other.packId == packId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.fulfilledQuantity, fulfilledQuantity) || other.fulfilledQuantity == fulfilledQuantity)&&(identical(other.unitPriceKobo, unitPriceKobo) || other.unitPriceKobo == unitPriceKobo)&&(identical(other.lineTotalKobo, lineTotalKobo) || other.lineTotalKobo == lineTotalKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,packId,name,brand,packageLabel,quantity,fulfilledQuantity,unitPriceKobo,lineTotalKobo);

@override
String toString() {
  return 'EmployeeOrderItem(id: $id, productId: $productId, packId: $packId, name: $name, brand: $brand, packageLabel: $packageLabel, quantity: $quantity, fulfilledQuantity: $fulfilledQuantity, unitPriceKobo: $unitPriceKobo, lineTotalKobo: $lineTotalKobo)';
}


}

/// @nodoc
abstract mixin class _$EmployeeOrderItemCopyWith<$Res> implements $EmployeeOrderItemCopyWith<$Res> {
  factory _$EmployeeOrderItemCopyWith(_EmployeeOrderItem value, $Res Function(_EmployeeOrderItem) _then) = __$EmployeeOrderItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String? packId, String name, String brand, String packageLabel, int quantity, int fulfilledQuantity, int unitPriceKobo, int lineTotalKobo
});




}
/// @nodoc
class __$EmployeeOrderItemCopyWithImpl<$Res>
    implements _$EmployeeOrderItemCopyWith<$Res> {
  __$EmployeeOrderItemCopyWithImpl(this._self, this._then);

  final _EmployeeOrderItem _self;
  final $Res Function(_EmployeeOrderItem) _then;

/// Create a copy of EmployeeOrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? packId = freezed,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? quantity = null,Object? fulfilledQuantity = null,Object? unitPriceKobo = null,Object? lineTotalKobo = null,}) {
  return _then(_EmployeeOrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packId: freezed == packId ? _self.packId : packId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,fulfilledQuantity: null == fulfilledQuantity ? _self.fulfilledQuantity : fulfilledQuantity // ignore: cast_nullable_to_non_nullable
as int,unitPriceKobo: null == unitPriceKobo ? _self.unitPriceKobo : unitPriceKobo // ignore: cast_nullable_to_non_nullable
as int,lineTotalKobo: null == lineTotalKobo ? _self.lineTotalKobo : lineTotalKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OrderStatusHistory {

 String get id; String? get fromStatus; String get toStatus; String? get note; String? get changedById; String get createdAt;
/// Create a copy of OrderStatusHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusHistoryCopyWith<OrderStatusHistory> get copyWith => _$OrderStatusHistoryCopyWithImpl<OrderStatusHistory>(this as OrderStatusHistory, _$identity);

  /// Serializes this OrderStatusHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.fromStatus, fromStatus) || other.fromStatus == fromStatus)&&(identical(other.toStatus, toStatus) || other.toStatus == toStatus)&&(identical(other.note, note) || other.note == note)&&(identical(other.changedById, changedById) || other.changedById == changedById)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fromStatus,toStatus,note,changedById,createdAt);

@override
String toString() {
  return 'OrderStatusHistory(id: $id, fromStatus: $fromStatus, toStatus: $toStatus, note: $note, changedById: $changedById, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderStatusHistoryCopyWith<$Res>  {
  factory $OrderStatusHistoryCopyWith(OrderStatusHistory value, $Res Function(OrderStatusHistory) _then) = _$OrderStatusHistoryCopyWithImpl;
@useResult
$Res call({
 String id, String? fromStatus, String toStatus, String? note, String? changedById, String createdAt
});




}
/// @nodoc
class _$OrderStatusHistoryCopyWithImpl<$Res>
    implements $OrderStatusHistoryCopyWith<$Res> {
  _$OrderStatusHistoryCopyWithImpl(this._self, this._then);

  final OrderStatusHistory _self;
  final $Res Function(OrderStatusHistory) _then;

/// Create a copy of OrderStatusHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fromStatus = freezed,Object? toStatus = null,Object? note = freezed,Object? changedById = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fromStatus: freezed == fromStatus ? _self.fromStatus : fromStatus // ignore: cast_nullable_to_non_nullable
as String?,toStatus: null == toStatus ? _self.toStatus : toStatus // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,changedById: freezed == changedById ? _self.changedById : changedById // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderStatusHistory].
extension OrderStatusHistoryPatterns on OrderStatusHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatusHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatusHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatusHistory value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatusHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatusHistory value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatusHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? fromStatus,  String toStatus,  String? note,  String? changedById,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderStatusHistory() when $default != null:
return $default(_that.id,_that.fromStatus,_that.toStatus,_that.note,_that.changedById,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? fromStatus,  String toStatus,  String? note,  String? changedById,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderStatusHistory():
return $default(_that.id,_that.fromStatus,_that.toStatus,_that.note,_that.changedById,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? fromStatus,  String toStatus,  String? note,  String? changedById,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderStatusHistory() when $default != null:
return $default(_that.id,_that.fromStatus,_that.toStatus,_that.note,_that.changedById,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderStatusHistory implements OrderStatusHistory {
  const _OrderStatusHistory({required this.id, this.fromStatus, required this.toStatus, this.note, this.changedById, required this.createdAt});
  factory _OrderStatusHistory.fromJson(Map<String, dynamic> json) => _$OrderStatusHistoryFromJson(json);

@override final  String id;
@override final  String? fromStatus;
@override final  String toStatus;
@override final  String? note;
@override final  String? changedById;
@override final  String createdAt;

/// Create a copy of OrderStatusHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusHistoryCopyWith<_OrderStatusHistory> get copyWith => __$OrderStatusHistoryCopyWithImpl<_OrderStatusHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderStatusHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatusHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.fromStatus, fromStatus) || other.fromStatus == fromStatus)&&(identical(other.toStatus, toStatus) || other.toStatus == toStatus)&&(identical(other.note, note) || other.note == note)&&(identical(other.changedById, changedById) || other.changedById == changedById)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fromStatus,toStatus,note,changedById,createdAt);

@override
String toString() {
  return 'OrderStatusHistory(id: $id, fromStatus: $fromStatus, toStatus: $toStatus, note: $note, changedById: $changedById, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusHistoryCopyWith<$Res> implements $OrderStatusHistoryCopyWith<$Res> {
  factory _$OrderStatusHistoryCopyWith(_OrderStatusHistory value, $Res Function(_OrderStatusHistory) _then) = __$OrderStatusHistoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String? fromStatus, String toStatus, String? note, String? changedById, String createdAt
});




}
/// @nodoc
class __$OrderStatusHistoryCopyWithImpl<$Res>
    implements _$OrderStatusHistoryCopyWith<$Res> {
  __$OrderStatusHistoryCopyWithImpl(this._self, this._then);

  final _OrderStatusHistory _self;
  final $Res Function(_OrderStatusHistory) _then;

/// Create a copy of OrderStatusHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fromStatus = freezed,Object? toStatus = null,Object? note = freezed,Object? changedById = freezed,Object? createdAt = null,}) {
  return _then(_OrderStatusHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fromStatus: freezed == fromStatus ? _self.fromStatus : fromStatus // ignore: cast_nullable_to_non_nullable
as String?,toStatus: null == toStatus ? _self.toStatus : toStatus // ignore: cast_nullable_to_non_nullable
as String,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,changedById: freezed == changedById ? _self.changedById : changedById // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EmployeeOrder {

 String get id; String get employeeId; String get employerId; String get pickupPointId; String get productType; String get fulfillmentStatus; String get statusLabel; String get creditStatus; int get subtotalKobo; int get deliveryFeeKobo; int get serviceFeeKobo; int get totalKobo; int? get approvedAmountKobo; String? get approvalExpiresAt; String? get graceInterestStartsAt; int? get reservedKobo; String? get reservationStatus; List<EmployeeOrderItem> get items; List<OrderStatusHistory> get statusHistory; String get createdAt; String get updatedAt;
/// Create a copy of EmployeeOrder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeOrderCopyWith<EmployeeOrder> get copyWith => _$EmployeeOrderCopyWithImpl<EmployeeOrder>(this as EmployeeOrder, _$identity);

  /// Serializes this EmployeeOrder to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employerId, employerId) || other.employerId == employerId)&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.fulfillmentStatus, fulfillmentStatus) || other.fulfillmentStatus == fulfillmentStatus)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.creditStatus, creditStatus) || other.creditStatus == creditStatus)&&(identical(other.subtotalKobo, subtotalKobo) || other.subtotalKobo == subtotalKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.serviceFeeKobo, serviceFeeKobo) || other.serviceFeeKobo == serviceFeeKobo)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.approvedAmountKobo, approvedAmountKobo) || other.approvedAmountKobo == approvedAmountKobo)&&(identical(other.approvalExpiresAt, approvalExpiresAt) || other.approvalExpiresAt == approvalExpiresAt)&&(identical(other.graceInterestStartsAt, graceInterestStartsAt) || other.graceInterestStartsAt == graceInterestStartsAt)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo)&&(identical(other.reservationStatus, reservationStatus) || other.reservationStatus == reservationStatus)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.statusHistory, statusHistory)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,employerId,pickupPointId,productType,fulfillmentStatus,statusLabel,creditStatus,subtotalKobo,deliveryFeeKobo,serviceFeeKobo,totalKobo,approvedAmountKobo,approvalExpiresAt,graceInterestStartsAt,reservedKobo,reservationStatus,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(statusHistory),createdAt,updatedAt]);

@override
String toString() {
  return 'EmployeeOrder(id: $id, employeeId: $employeeId, employerId: $employerId, pickupPointId: $pickupPointId, productType: $productType, fulfillmentStatus: $fulfillmentStatus, statusLabel: $statusLabel, creditStatus: $creditStatus, subtotalKobo: $subtotalKobo, deliveryFeeKobo: $deliveryFeeKobo, serviceFeeKobo: $serviceFeeKobo, totalKobo: $totalKobo, approvedAmountKobo: $approvedAmountKobo, approvalExpiresAt: $approvalExpiresAt, graceInterestStartsAt: $graceInterestStartsAt, reservedKobo: $reservedKobo, reservationStatus: $reservationStatus, items: $items, statusHistory: $statusHistory, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $EmployeeOrderCopyWith<$Res>  {
  factory $EmployeeOrderCopyWith(EmployeeOrder value, $Res Function(EmployeeOrder) _then) = _$EmployeeOrderCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String employerId, String pickupPointId, String productType, String fulfillmentStatus, String statusLabel, String creditStatus, int subtotalKobo, int deliveryFeeKobo, int serviceFeeKobo, int totalKobo, int? approvedAmountKobo, String? approvalExpiresAt, String? graceInterestStartsAt, int? reservedKobo, String? reservationStatus, List<EmployeeOrderItem> items, List<OrderStatusHistory> statusHistory, String createdAt, String updatedAt
});




}
/// @nodoc
class _$EmployeeOrderCopyWithImpl<$Res>
    implements $EmployeeOrderCopyWith<$Res> {
  _$EmployeeOrderCopyWithImpl(this._self, this._then);

  final EmployeeOrder _self;
  final $Res Function(EmployeeOrder) _then;

/// Create a copy of EmployeeOrder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? employerId = null,Object? pickupPointId = null,Object? productType = null,Object? fulfillmentStatus = null,Object? statusLabel = null,Object? creditStatus = null,Object? subtotalKobo = null,Object? deliveryFeeKobo = null,Object? serviceFeeKobo = null,Object? totalKobo = null,Object? approvedAmountKobo = freezed,Object? approvalExpiresAt = freezed,Object? graceInterestStartsAt = freezed,Object? reservedKobo = freezed,Object? reservationStatus = freezed,Object? items = null,Object? statusHistory = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employerId: null == employerId ? _self.employerId : employerId // ignore: cast_nullable_to_non_nullable
as String,pickupPointId: null == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,fulfillmentStatus: null == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,creditStatus: null == creditStatus ? _self.creditStatus : creditStatus // ignore: cast_nullable_to_non_nullable
as String,subtotalKobo: null == subtotalKobo ? _self.subtotalKobo : subtotalKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,serviceFeeKobo: null == serviceFeeKobo ? _self.serviceFeeKobo : serviceFeeKobo // ignore: cast_nullable_to_non_nullable
as int,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,approvedAmountKobo: freezed == approvedAmountKobo ? _self.approvedAmountKobo : approvedAmountKobo // ignore: cast_nullable_to_non_nullable
as int?,approvalExpiresAt: freezed == approvalExpiresAt ? _self.approvalExpiresAt : approvalExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,graceInterestStartsAt: freezed == graceInterestStartsAt ? _self.graceInterestStartsAt : graceInterestStartsAt // ignore: cast_nullable_to_non_nullable
as String?,reservedKobo: freezed == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int?,reservationStatus: freezed == reservationStatus ? _self.reservationStatus : reservationStatus // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<EmployeeOrderItem>,statusHistory: null == statusHistory ? _self.statusHistory : statusHistory // ignore: cast_nullable_to_non_nullable
as List<OrderStatusHistory>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeOrder].
extension EmployeeOrderPatterns on EmployeeOrder {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeOrder value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeOrder() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeOrder value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeOrder():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeOrder value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeOrder() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employerId,  String pickupPointId,  String productType,  String fulfillmentStatus,  String statusLabel,  String creditStatus,  int subtotalKobo,  int deliveryFeeKobo,  int serviceFeeKobo,  int totalKobo,  int? approvedAmountKobo,  String? approvalExpiresAt,  String? graceInterestStartsAt,  int? reservedKobo,  String? reservationStatus,  List<EmployeeOrderItem> items,  List<OrderStatusHistory> statusHistory,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeOrder() when $default != null:
return $default(_that.id,_that.employeeId,_that.employerId,_that.pickupPointId,_that.productType,_that.fulfillmentStatus,_that.statusLabel,_that.creditStatus,_that.subtotalKobo,_that.deliveryFeeKobo,_that.serviceFeeKobo,_that.totalKobo,_that.approvedAmountKobo,_that.approvalExpiresAt,_that.graceInterestStartsAt,_that.reservedKobo,_that.reservationStatus,_that.items,_that.statusHistory,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String employerId,  String pickupPointId,  String productType,  String fulfillmentStatus,  String statusLabel,  String creditStatus,  int subtotalKobo,  int deliveryFeeKobo,  int serviceFeeKobo,  int totalKobo,  int? approvedAmountKobo,  String? approvalExpiresAt,  String? graceInterestStartsAt,  int? reservedKobo,  String? reservationStatus,  List<EmployeeOrderItem> items,  List<OrderStatusHistory> statusHistory,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _EmployeeOrder():
return $default(_that.id,_that.employeeId,_that.employerId,_that.pickupPointId,_that.productType,_that.fulfillmentStatus,_that.statusLabel,_that.creditStatus,_that.subtotalKobo,_that.deliveryFeeKobo,_that.serviceFeeKobo,_that.totalKobo,_that.approvedAmountKobo,_that.approvalExpiresAt,_that.graceInterestStartsAt,_that.reservedKobo,_that.reservationStatus,_that.items,_that.statusHistory,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String employerId,  String pickupPointId,  String productType,  String fulfillmentStatus,  String statusLabel,  String creditStatus,  int subtotalKobo,  int deliveryFeeKobo,  int serviceFeeKobo,  int totalKobo,  int? approvedAmountKobo,  String? approvalExpiresAt,  String? graceInterestStartsAt,  int? reservedKobo,  String? reservationStatus,  List<EmployeeOrderItem> items,  List<OrderStatusHistory> statusHistory,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeOrder() when $default != null:
return $default(_that.id,_that.employeeId,_that.employerId,_that.pickupPointId,_that.productType,_that.fulfillmentStatus,_that.statusLabel,_that.creditStatus,_that.subtotalKobo,_that.deliveryFeeKobo,_that.serviceFeeKobo,_that.totalKobo,_that.approvedAmountKobo,_that.approvalExpiresAt,_that.graceInterestStartsAt,_that.reservedKobo,_that.reservationStatus,_that.items,_that.statusHistory,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeOrder implements EmployeeOrder {
  const _EmployeeOrder({required this.id, required this.employeeId, required this.employerId, required this.pickupPointId, required this.productType, required this.fulfillmentStatus, required this.statusLabel, required this.creditStatus, required this.subtotalKobo, required this.deliveryFeeKobo, required this.serviceFeeKobo, required this.totalKobo, this.approvedAmountKobo, this.approvalExpiresAt, this.graceInterestStartsAt, this.reservedKobo, this.reservationStatus, final  List<EmployeeOrderItem> items = const <EmployeeOrderItem>[], final  List<OrderStatusHistory> statusHistory = const <OrderStatusHistory>[], required this.createdAt, required this.updatedAt}): _items = items,_statusHistory = statusHistory;
  factory _EmployeeOrder.fromJson(Map<String, dynamic> json) => _$EmployeeOrderFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String employerId;
@override final  String pickupPointId;
@override final  String productType;
@override final  String fulfillmentStatus;
@override final  String statusLabel;
@override final  String creditStatus;
@override final  int subtotalKobo;
@override final  int deliveryFeeKobo;
@override final  int serviceFeeKobo;
@override final  int totalKobo;
@override final  int? approvedAmountKobo;
@override final  String? approvalExpiresAt;
@override final  String? graceInterestStartsAt;
@override final  int? reservedKobo;
@override final  String? reservationStatus;
 final  List<EmployeeOrderItem> _items;
@override@JsonKey() List<EmployeeOrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<OrderStatusHistory> _statusHistory;
@override@JsonKey() List<OrderStatusHistory> get statusHistory {
  if (_statusHistory is EqualUnmodifiableListView) return _statusHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_statusHistory);
}

@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of EmployeeOrder
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeOrderCopyWith<_EmployeeOrder> get copyWith => __$EmployeeOrderCopyWithImpl<_EmployeeOrder>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeOrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeOrder&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employerId, employerId) || other.employerId == employerId)&&(identical(other.pickupPointId, pickupPointId) || other.pickupPointId == pickupPointId)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.fulfillmentStatus, fulfillmentStatus) || other.fulfillmentStatus == fulfillmentStatus)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.creditStatus, creditStatus) || other.creditStatus == creditStatus)&&(identical(other.subtotalKobo, subtotalKobo) || other.subtotalKobo == subtotalKobo)&&(identical(other.deliveryFeeKobo, deliveryFeeKobo) || other.deliveryFeeKobo == deliveryFeeKobo)&&(identical(other.serviceFeeKobo, serviceFeeKobo) || other.serviceFeeKobo == serviceFeeKobo)&&(identical(other.totalKobo, totalKobo) || other.totalKobo == totalKobo)&&(identical(other.approvedAmountKobo, approvedAmountKobo) || other.approvedAmountKobo == approvedAmountKobo)&&(identical(other.approvalExpiresAt, approvalExpiresAt) || other.approvalExpiresAt == approvalExpiresAt)&&(identical(other.graceInterestStartsAt, graceInterestStartsAt) || other.graceInterestStartsAt == graceInterestStartsAt)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo)&&(identical(other.reservationStatus, reservationStatus) || other.reservationStatus == reservationStatus)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._statusHistory, _statusHistory)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,employerId,pickupPointId,productType,fulfillmentStatus,statusLabel,creditStatus,subtotalKobo,deliveryFeeKobo,serviceFeeKobo,totalKobo,approvedAmountKobo,approvalExpiresAt,graceInterestStartsAt,reservedKobo,reservationStatus,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_statusHistory),createdAt,updatedAt]);

@override
String toString() {
  return 'EmployeeOrder(id: $id, employeeId: $employeeId, employerId: $employerId, pickupPointId: $pickupPointId, productType: $productType, fulfillmentStatus: $fulfillmentStatus, statusLabel: $statusLabel, creditStatus: $creditStatus, subtotalKobo: $subtotalKobo, deliveryFeeKobo: $deliveryFeeKobo, serviceFeeKobo: $serviceFeeKobo, totalKobo: $totalKobo, approvedAmountKobo: $approvedAmountKobo, approvalExpiresAt: $approvalExpiresAt, graceInterestStartsAt: $graceInterestStartsAt, reservedKobo: $reservedKobo, reservationStatus: $reservationStatus, items: $items, statusHistory: $statusHistory, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EmployeeOrderCopyWith<$Res> implements $EmployeeOrderCopyWith<$Res> {
  factory _$EmployeeOrderCopyWith(_EmployeeOrder value, $Res Function(_EmployeeOrder) _then) = __$EmployeeOrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String employerId, String pickupPointId, String productType, String fulfillmentStatus, String statusLabel, String creditStatus, int subtotalKobo, int deliveryFeeKobo, int serviceFeeKobo, int totalKobo, int? approvedAmountKobo, String? approvalExpiresAt, String? graceInterestStartsAt, int? reservedKobo, String? reservationStatus, List<EmployeeOrderItem> items, List<OrderStatusHistory> statusHistory, String createdAt, String updatedAt
});




}
/// @nodoc
class __$EmployeeOrderCopyWithImpl<$Res>
    implements _$EmployeeOrderCopyWith<$Res> {
  __$EmployeeOrderCopyWithImpl(this._self, this._then);

  final _EmployeeOrder _self;
  final $Res Function(_EmployeeOrder) _then;

/// Create a copy of EmployeeOrder
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? employerId = null,Object? pickupPointId = null,Object? productType = null,Object? fulfillmentStatus = null,Object? statusLabel = null,Object? creditStatus = null,Object? subtotalKobo = null,Object? deliveryFeeKobo = null,Object? serviceFeeKobo = null,Object? totalKobo = null,Object? approvedAmountKobo = freezed,Object? approvalExpiresAt = freezed,Object? graceInterestStartsAt = freezed,Object? reservedKobo = freezed,Object? reservationStatus = freezed,Object? items = null,Object? statusHistory = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_EmployeeOrder(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employerId: null == employerId ? _self.employerId : employerId // ignore: cast_nullable_to_non_nullable
as String,pickupPointId: null == pickupPointId ? _self.pickupPointId : pickupPointId // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,fulfillmentStatus: null == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,creditStatus: null == creditStatus ? _self.creditStatus : creditStatus // ignore: cast_nullable_to_non_nullable
as String,subtotalKobo: null == subtotalKobo ? _self.subtotalKobo : subtotalKobo // ignore: cast_nullable_to_non_nullable
as int,deliveryFeeKobo: null == deliveryFeeKobo ? _self.deliveryFeeKobo : deliveryFeeKobo // ignore: cast_nullable_to_non_nullable
as int,serviceFeeKobo: null == serviceFeeKobo ? _self.serviceFeeKobo : serviceFeeKobo // ignore: cast_nullable_to_non_nullable
as int,totalKobo: null == totalKobo ? _self.totalKobo : totalKobo // ignore: cast_nullable_to_non_nullable
as int,approvedAmountKobo: freezed == approvedAmountKobo ? _self.approvedAmountKobo : approvedAmountKobo // ignore: cast_nullable_to_non_nullable
as int?,approvalExpiresAt: freezed == approvalExpiresAt ? _self.approvalExpiresAt : approvalExpiresAt // ignore: cast_nullable_to_non_nullable
as String?,graceInterestStartsAt: freezed == graceInterestStartsAt ? _self.graceInterestStartsAt : graceInterestStartsAt // ignore: cast_nullable_to_non_nullable
as String?,reservedKobo: freezed == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int?,reservationStatus: freezed == reservationStatus ? _self.reservationStatus : reservationStatus // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<EmployeeOrderItem>,statusHistory: null == statusHistory ? _self._statusHistory : statusHistory // ignore: cast_nullable_to_non_nullable
as List<OrderStatusHistory>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
