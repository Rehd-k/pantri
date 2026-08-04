// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerEntry {

 String get id; int get sequence;@JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson) LedgerEntryType get entryType; int get amountKobo; int get balanceAfterKobo; int get reservedAfterKobo;@JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson) ProductType? get productType; String? get referenceType; String? get referenceId; String get createdAt;
/// Create a copy of LedgerEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LedgerEntryCopyWith<LedgerEntry> get copyWith => _$LedgerEntryCopyWithImpl<LedgerEntry>(this as LedgerEntry, _$identity);

  /// Serializes this LedgerEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LedgerEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.entryType, entryType) || other.entryType == entryType)&&(identical(other.amountKobo, amountKobo) || other.amountKobo == amountKobo)&&(identical(other.balanceAfterKobo, balanceAfterKobo) || other.balanceAfterKobo == balanceAfterKobo)&&(identical(other.reservedAfterKobo, reservedAfterKobo) || other.reservedAfterKobo == reservedAfterKobo)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sequence,entryType,amountKobo,balanceAfterKobo,reservedAfterKobo,productType,referenceType,referenceId,createdAt);

@override
String toString() {
  return 'LedgerEntry(id: $id, sequence: $sequence, entryType: $entryType, amountKobo: $amountKobo, balanceAfterKobo: $balanceAfterKobo, reservedAfterKobo: $reservedAfterKobo, productType: $productType, referenceType: $referenceType, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $LedgerEntryCopyWith<$Res>  {
  factory $LedgerEntryCopyWith(LedgerEntry value, $Res Function(LedgerEntry) _then) = _$LedgerEntryCopyWithImpl;
@useResult
$Res call({
 String id, int sequence,@JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson) LedgerEntryType entryType, int amountKobo, int balanceAfterKobo, int reservedAfterKobo,@JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson) ProductType? productType, String? referenceType, String? referenceId, String createdAt
});




}
/// @nodoc
class _$LedgerEntryCopyWithImpl<$Res>
    implements $LedgerEntryCopyWith<$Res> {
  _$LedgerEntryCopyWithImpl(this._self, this._then);

  final LedgerEntry _self;
  final $Res Function(LedgerEntry) _then;

/// Create a copy of LedgerEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sequence = null,Object? entryType = null,Object? amountKobo = null,Object? balanceAfterKobo = null,Object? reservedAfterKobo = null,Object? productType = freezed,Object? referenceType = freezed,Object? referenceId = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as LedgerEntryType,amountKobo: null == amountKobo ? _self.amountKobo : amountKobo // ignore: cast_nullable_to_non_nullable
as int,balanceAfterKobo: null == balanceAfterKobo ? _self.balanceAfterKobo : balanceAfterKobo // ignore: cast_nullable_to_non_nullable
as int,reservedAfterKobo: null == reservedAfterKobo ? _self.reservedAfterKobo : reservedAfterKobo // ignore: cast_nullable_to_non_nullable
as int,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as ProductType?,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LedgerEntry].
extension LedgerEntryPatterns on LedgerEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LedgerEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LedgerEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LedgerEntry value)  $default,){
final _that = this;
switch (_that) {
case _LedgerEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LedgerEntry value)?  $default,){
final _that = this;
switch (_that) {
case _LedgerEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int sequence, @JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson)  LedgerEntryType entryType,  int amountKobo,  int balanceAfterKobo,  int reservedAfterKobo, @JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson)  ProductType? productType,  String? referenceType,  String? referenceId,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LedgerEntry() when $default != null:
return $default(_that.id,_that.sequence,_that.entryType,_that.amountKobo,_that.balanceAfterKobo,_that.reservedAfterKobo,_that.productType,_that.referenceType,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int sequence, @JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson)  LedgerEntryType entryType,  int amountKobo,  int balanceAfterKobo,  int reservedAfterKobo, @JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson)  ProductType? productType,  String? referenceType,  String? referenceId,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _LedgerEntry():
return $default(_that.id,_that.sequence,_that.entryType,_that.amountKobo,_that.balanceAfterKobo,_that.reservedAfterKobo,_that.productType,_that.referenceType,_that.referenceId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int sequence, @JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson)  LedgerEntryType entryType,  int amountKobo,  int balanceAfterKobo,  int reservedAfterKobo, @JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson)  ProductType? productType,  String? referenceType,  String? referenceId,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _LedgerEntry() when $default != null:
return $default(_that.id,_that.sequence,_that.entryType,_that.amountKobo,_that.balanceAfterKobo,_that.reservedAfterKobo,_that.productType,_that.referenceType,_that.referenceId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LedgerEntry implements LedgerEntry {
  const _LedgerEntry({required this.id, required this.sequence, @JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson) required this.entryType, required this.amountKobo, required this.balanceAfterKobo, required this.reservedAfterKobo, @JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson) this.productType, this.referenceType, this.referenceId, required this.createdAt});
  factory _LedgerEntry.fromJson(Map<String, dynamic> json) => _$LedgerEntryFromJson(json);

@override final  String id;
@override final  int sequence;
@override@JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson) final  LedgerEntryType entryType;
@override final  int amountKobo;
@override final  int balanceAfterKobo;
@override final  int reservedAfterKobo;
@override@JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson) final  ProductType? productType;
@override final  String? referenceType;
@override final  String? referenceId;
@override final  String createdAt;

/// Create a copy of LedgerEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LedgerEntryCopyWith<_LedgerEntry> get copyWith => __$LedgerEntryCopyWithImpl<_LedgerEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LedgerEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LedgerEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.entryType, entryType) || other.entryType == entryType)&&(identical(other.amountKobo, amountKobo) || other.amountKobo == amountKobo)&&(identical(other.balanceAfterKobo, balanceAfterKobo) || other.balanceAfterKobo == balanceAfterKobo)&&(identical(other.reservedAfterKobo, reservedAfterKobo) || other.reservedAfterKobo == reservedAfterKobo)&&(identical(other.productType, productType) || other.productType == productType)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sequence,entryType,amountKobo,balanceAfterKobo,reservedAfterKobo,productType,referenceType,referenceId,createdAt);

@override
String toString() {
  return 'LedgerEntry(id: $id, sequence: $sequence, entryType: $entryType, amountKobo: $amountKobo, balanceAfterKobo: $balanceAfterKobo, reservedAfterKobo: $reservedAfterKobo, productType: $productType, referenceType: $referenceType, referenceId: $referenceId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$LedgerEntryCopyWith<$Res> implements $LedgerEntryCopyWith<$Res> {
  factory _$LedgerEntryCopyWith(_LedgerEntry value, $Res Function(_LedgerEntry) _then) = __$LedgerEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, int sequence,@JsonKey(fromJson: LedgerEntryType.fromApi, toJson: _entryTypeToJson) LedgerEntryType entryType, int amountKobo, int balanceAfterKobo, int reservedAfterKobo,@JsonKey(fromJson: _productTypeFromJson, toJson: _productTypeToJson) ProductType? productType, String? referenceType, String? referenceId, String createdAt
});




}
/// @nodoc
class __$LedgerEntryCopyWithImpl<$Res>
    implements _$LedgerEntryCopyWith<$Res> {
  __$LedgerEntryCopyWithImpl(this._self, this._then);

  final _LedgerEntry _self;
  final $Res Function(_LedgerEntry) _then;

/// Create a copy of LedgerEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sequence = null,Object? entryType = null,Object? amountKobo = null,Object? balanceAfterKobo = null,Object? reservedAfterKobo = null,Object? productType = freezed,Object? referenceType = freezed,Object? referenceId = freezed,Object? createdAt = null,}) {
  return _then(_LedgerEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,entryType: null == entryType ? _self.entryType : entryType // ignore: cast_nullable_to_non_nullable
as LedgerEntryType,amountKobo: null == amountKobo ? _self.amountKobo : amountKobo // ignore: cast_nullable_to_non_nullable
as int,balanceAfterKobo: null == balanceAfterKobo ? _self.balanceAfterKobo : balanceAfterKobo // ignore: cast_nullable_to_non_nullable
as int,reservedAfterKobo: null == reservedAfterKobo ? _self.reservedAfterKobo : reservedAfterKobo // ignore: cast_nullable_to_non_nullable
as int,productType: freezed == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as ProductType?,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
