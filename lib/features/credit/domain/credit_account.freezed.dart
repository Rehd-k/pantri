// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreditAccount {

 String get id; int get creditLimitKobo; int? get manualLimitOverrideKobo; int get effectiveLimitKobo; int get principalOutstandingKobo; int get postedInterestKobo; int get postedFeesKobo; int get postedPenaltiesKobo; int get reservedKobo; int get accruedInterestUnpostedKobo; int get availableKobo; int get totalOwedKobo;@JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson) CreditAccountStatus get status; int get consecutiveMissedDeductions; String get updatedAt;
/// Create a copy of CreditAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditAccountCopyWith<CreditAccount> get copyWith => _$CreditAccountCopyWithImpl<CreditAccount>(this as CreditAccount, _$identity);

  /// Serializes this CreditAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.creditLimitKobo, creditLimitKobo) || other.creditLimitKobo == creditLimitKobo)&&(identical(other.manualLimitOverrideKobo, manualLimitOverrideKobo) || other.manualLimitOverrideKobo == manualLimitOverrideKobo)&&(identical(other.effectiveLimitKobo, effectiveLimitKobo) || other.effectiveLimitKobo == effectiveLimitKobo)&&(identical(other.principalOutstandingKobo, principalOutstandingKobo) || other.principalOutstandingKobo == principalOutstandingKobo)&&(identical(other.postedInterestKobo, postedInterestKobo) || other.postedInterestKobo == postedInterestKobo)&&(identical(other.postedFeesKobo, postedFeesKobo) || other.postedFeesKobo == postedFeesKobo)&&(identical(other.postedPenaltiesKobo, postedPenaltiesKobo) || other.postedPenaltiesKobo == postedPenaltiesKobo)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo)&&(identical(other.accruedInterestUnpostedKobo, accruedInterestUnpostedKobo) || other.accruedInterestUnpostedKobo == accruedInterestUnpostedKobo)&&(identical(other.availableKobo, availableKobo) || other.availableKobo == availableKobo)&&(identical(other.totalOwedKobo, totalOwedKobo) || other.totalOwedKobo == totalOwedKobo)&&(identical(other.status, status) || other.status == status)&&(identical(other.consecutiveMissedDeductions, consecutiveMissedDeductions) || other.consecutiveMissedDeductions == consecutiveMissedDeductions)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creditLimitKobo,manualLimitOverrideKobo,effectiveLimitKobo,principalOutstandingKobo,postedInterestKobo,postedFeesKobo,postedPenaltiesKobo,reservedKobo,accruedInterestUnpostedKobo,availableKobo,totalOwedKobo,status,consecutiveMissedDeductions,updatedAt);

@override
String toString() {
  return 'CreditAccount(id: $id, creditLimitKobo: $creditLimitKobo, manualLimitOverrideKobo: $manualLimitOverrideKobo, effectiveLimitKobo: $effectiveLimitKobo, principalOutstandingKobo: $principalOutstandingKobo, postedInterestKobo: $postedInterestKobo, postedFeesKobo: $postedFeesKobo, postedPenaltiesKobo: $postedPenaltiesKobo, reservedKobo: $reservedKobo, accruedInterestUnpostedKobo: $accruedInterestUnpostedKobo, availableKobo: $availableKobo, totalOwedKobo: $totalOwedKobo, status: $status, consecutiveMissedDeductions: $consecutiveMissedDeductions, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CreditAccountCopyWith<$Res>  {
  factory $CreditAccountCopyWith(CreditAccount value, $Res Function(CreditAccount) _then) = _$CreditAccountCopyWithImpl;
@useResult
$Res call({
 String id, int creditLimitKobo, int? manualLimitOverrideKobo, int effectiveLimitKobo, int principalOutstandingKobo, int postedInterestKobo, int postedFeesKobo, int postedPenaltiesKobo, int reservedKobo, int accruedInterestUnpostedKobo, int availableKobo, int totalOwedKobo,@JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson) CreditAccountStatus status, int consecutiveMissedDeductions, String updatedAt
});




}
/// @nodoc
class _$CreditAccountCopyWithImpl<$Res>
    implements $CreditAccountCopyWith<$Res> {
  _$CreditAccountCopyWithImpl(this._self, this._then);

  final CreditAccount _self;
  final $Res Function(CreditAccount) _then;

/// Create a copy of CreditAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? creditLimitKobo = null,Object? manualLimitOverrideKobo = freezed,Object? effectiveLimitKobo = null,Object? principalOutstandingKobo = null,Object? postedInterestKobo = null,Object? postedFeesKobo = null,Object? postedPenaltiesKobo = null,Object? reservedKobo = null,Object? accruedInterestUnpostedKobo = null,Object? availableKobo = null,Object? totalOwedKobo = null,Object? status = null,Object? consecutiveMissedDeductions = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,creditLimitKobo: null == creditLimitKobo ? _self.creditLimitKobo : creditLimitKobo // ignore: cast_nullable_to_non_nullable
as int,manualLimitOverrideKobo: freezed == manualLimitOverrideKobo ? _self.manualLimitOverrideKobo : manualLimitOverrideKobo // ignore: cast_nullable_to_non_nullable
as int?,effectiveLimitKobo: null == effectiveLimitKobo ? _self.effectiveLimitKobo : effectiveLimitKobo // ignore: cast_nullable_to_non_nullable
as int,principalOutstandingKobo: null == principalOutstandingKobo ? _self.principalOutstandingKobo : principalOutstandingKobo // ignore: cast_nullable_to_non_nullable
as int,postedInterestKobo: null == postedInterestKobo ? _self.postedInterestKobo : postedInterestKobo // ignore: cast_nullable_to_non_nullable
as int,postedFeesKobo: null == postedFeesKobo ? _self.postedFeesKobo : postedFeesKobo // ignore: cast_nullable_to_non_nullable
as int,postedPenaltiesKobo: null == postedPenaltiesKobo ? _self.postedPenaltiesKobo : postedPenaltiesKobo // ignore: cast_nullable_to_non_nullable
as int,reservedKobo: null == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int,accruedInterestUnpostedKobo: null == accruedInterestUnpostedKobo ? _self.accruedInterestUnpostedKobo : accruedInterestUnpostedKobo // ignore: cast_nullable_to_non_nullable
as int,availableKobo: null == availableKobo ? _self.availableKobo : availableKobo // ignore: cast_nullable_to_non_nullable
as int,totalOwedKobo: null == totalOwedKobo ? _self.totalOwedKobo : totalOwedKobo // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreditAccountStatus,consecutiveMissedDeductions: null == consecutiveMissedDeductions ? _self.consecutiveMissedDeductions : consecutiveMissedDeductions // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditAccount].
extension CreditAccountPatterns on CreditAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditAccount value)  $default,){
final _that = this;
switch (_that) {
case _CreditAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditAccount value)?  $default,){
final _that = this;
switch (_that) {
case _CreditAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int creditLimitKobo,  int? manualLimitOverrideKobo,  int effectiveLimitKobo,  int principalOutstandingKobo,  int postedInterestKobo,  int postedFeesKobo,  int postedPenaltiesKobo,  int reservedKobo,  int accruedInterestUnpostedKobo,  int availableKobo,  int totalOwedKobo, @JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson)  CreditAccountStatus status,  int consecutiveMissedDeductions,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditAccount() when $default != null:
return $default(_that.id,_that.creditLimitKobo,_that.manualLimitOverrideKobo,_that.effectiveLimitKobo,_that.principalOutstandingKobo,_that.postedInterestKobo,_that.postedFeesKobo,_that.postedPenaltiesKobo,_that.reservedKobo,_that.accruedInterestUnpostedKobo,_that.availableKobo,_that.totalOwedKobo,_that.status,_that.consecutiveMissedDeductions,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int creditLimitKobo,  int? manualLimitOverrideKobo,  int effectiveLimitKobo,  int principalOutstandingKobo,  int postedInterestKobo,  int postedFeesKobo,  int postedPenaltiesKobo,  int reservedKobo,  int accruedInterestUnpostedKobo,  int availableKobo,  int totalOwedKobo, @JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson)  CreditAccountStatus status,  int consecutiveMissedDeductions,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CreditAccount():
return $default(_that.id,_that.creditLimitKobo,_that.manualLimitOverrideKobo,_that.effectiveLimitKobo,_that.principalOutstandingKobo,_that.postedInterestKobo,_that.postedFeesKobo,_that.postedPenaltiesKobo,_that.reservedKobo,_that.accruedInterestUnpostedKobo,_that.availableKobo,_that.totalOwedKobo,_that.status,_that.consecutiveMissedDeductions,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int creditLimitKobo,  int? manualLimitOverrideKobo,  int effectiveLimitKobo,  int principalOutstandingKobo,  int postedInterestKobo,  int postedFeesKobo,  int postedPenaltiesKobo,  int reservedKobo,  int accruedInterestUnpostedKobo,  int availableKobo,  int totalOwedKobo, @JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson)  CreditAccountStatus status,  int consecutiveMissedDeductions,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CreditAccount() when $default != null:
return $default(_that.id,_that.creditLimitKobo,_that.manualLimitOverrideKobo,_that.effectiveLimitKobo,_that.principalOutstandingKobo,_that.postedInterestKobo,_that.postedFeesKobo,_that.postedPenaltiesKobo,_that.reservedKobo,_that.accruedInterestUnpostedKobo,_that.availableKobo,_that.totalOwedKobo,_that.status,_that.consecutiveMissedDeductions,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreditAccount implements CreditAccount {
  const _CreditAccount({required this.id, required this.creditLimitKobo, this.manualLimitOverrideKobo, required this.effectiveLimitKobo, required this.principalOutstandingKobo, required this.postedInterestKobo, required this.postedFeesKobo, required this.postedPenaltiesKobo, required this.reservedKobo, required this.accruedInterestUnpostedKobo, required this.availableKobo, required this.totalOwedKobo, @JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson) required this.status, required this.consecutiveMissedDeductions, required this.updatedAt});
  factory _CreditAccount.fromJson(Map<String, dynamic> json) => _$CreditAccountFromJson(json);

@override final  String id;
@override final  int creditLimitKobo;
@override final  int? manualLimitOverrideKobo;
@override final  int effectiveLimitKobo;
@override final  int principalOutstandingKobo;
@override final  int postedInterestKobo;
@override final  int postedFeesKobo;
@override final  int postedPenaltiesKobo;
@override final  int reservedKobo;
@override final  int accruedInterestUnpostedKobo;
@override final  int availableKobo;
@override final  int totalOwedKobo;
@override@JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson) final  CreditAccountStatus status;
@override final  int consecutiveMissedDeductions;
@override final  String updatedAt;

/// Create a copy of CreditAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditAccountCopyWith<_CreditAccount> get copyWith => __$CreditAccountCopyWithImpl<_CreditAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreditAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.creditLimitKobo, creditLimitKobo) || other.creditLimitKobo == creditLimitKobo)&&(identical(other.manualLimitOverrideKobo, manualLimitOverrideKobo) || other.manualLimitOverrideKobo == manualLimitOverrideKobo)&&(identical(other.effectiveLimitKobo, effectiveLimitKobo) || other.effectiveLimitKobo == effectiveLimitKobo)&&(identical(other.principalOutstandingKobo, principalOutstandingKobo) || other.principalOutstandingKobo == principalOutstandingKobo)&&(identical(other.postedInterestKobo, postedInterestKobo) || other.postedInterestKobo == postedInterestKobo)&&(identical(other.postedFeesKobo, postedFeesKobo) || other.postedFeesKobo == postedFeesKobo)&&(identical(other.postedPenaltiesKobo, postedPenaltiesKobo) || other.postedPenaltiesKobo == postedPenaltiesKobo)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo)&&(identical(other.accruedInterestUnpostedKobo, accruedInterestUnpostedKobo) || other.accruedInterestUnpostedKobo == accruedInterestUnpostedKobo)&&(identical(other.availableKobo, availableKobo) || other.availableKobo == availableKobo)&&(identical(other.totalOwedKobo, totalOwedKobo) || other.totalOwedKobo == totalOwedKobo)&&(identical(other.status, status) || other.status == status)&&(identical(other.consecutiveMissedDeductions, consecutiveMissedDeductions) || other.consecutiveMissedDeductions == consecutiveMissedDeductions)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creditLimitKobo,manualLimitOverrideKobo,effectiveLimitKobo,principalOutstandingKobo,postedInterestKobo,postedFeesKobo,postedPenaltiesKobo,reservedKobo,accruedInterestUnpostedKobo,availableKobo,totalOwedKobo,status,consecutiveMissedDeductions,updatedAt);

@override
String toString() {
  return 'CreditAccount(id: $id, creditLimitKobo: $creditLimitKobo, manualLimitOverrideKobo: $manualLimitOverrideKobo, effectiveLimitKobo: $effectiveLimitKobo, principalOutstandingKobo: $principalOutstandingKobo, postedInterestKobo: $postedInterestKobo, postedFeesKobo: $postedFeesKobo, postedPenaltiesKobo: $postedPenaltiesKobo, reservedKobo: $reservedKobo, accruedInterestUnpostedKobo: $accruedInterestUnpostedKobo, availableKobo: $availableKobo, totalOwedKobo: $totalOwedKobo, status: $status, consecutiveMissedDeductions: $consecutiveMissedDeductions, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CreditAccountCopyWith<$Res> implements $CreditAccountCopyWith<$Res> {
  factory _$CreditAccountCopyWith(_CreditAccount value, $Res Function(_CreditAccount) _then) = __$CreditAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, int creditLimitKobo, int? manualLimitOverrideKobo, int effectiveLimitKobo, int principalOutstandingKobo, int postedInterestKobo, int postedFeesKobo, int postedPenaltiesKobo, int reservedKobo, int accruedInterestUnpostedKobo, int availableKobo, int totalOwedKobo,@JsonKey(fromJson: CreditAccountStatus.fromApi, toJson: _statusToJson) CreditAccountStatus status, int consecutiveMissedDeductions, String updatedAt
});




}
/// @nodoc
class __$CreditAccountCopyWithImpl<$Res>
    implements _$CreditAccountCopyWith<$Res> {
  __$CreditAccountCopyWithImpl(this._self, this._then);

  final _CreditAccount _self;
  final $Res Function(_CreditAccount) _then;

/// Create a copy of CreditAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? creditLimitKobo = null,Object? manualLimitOverrideKobo = freezed,Object? effectiveLimitKobo = null,Object? principalOutstandingKobo = null,Object? postedInterestKobo = null,Object? postedFeesKobo = null,Object? postedPenaltiesKobo = null,Object? reservedKobo = null,Object? accruedInterestUnpostedKobo = null,Object? availableKobo = null,Object? totalOwedKobo = null,Object? status = null,Object? consecutiveMissedDeductions = null,Object? updatedAt = null,}) {
  return _then(_CreditAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,creditLimitKobo: null == creditLimitKobo ? _self.creditLimitKobo : creditLimitKobo // ignore: cast_nullable_to_non_nullable
as int,manualLimitOverrideKobo: freezed == manualLimitOverrideKobo ? _self.manualLimitOverrideKobo : manualLimitOverrideKobo // ignore: cast_nullable_to_non_nullable
as int?,effectiveLimitKobo: null == effectiveLimitKobo ? _self.effectiveLimitKobo : effectiveLimitKobo // ignore: cast_nullable_to_non_nullable
as int,principalOutstandingKobo: null == principalOutstandingKobo ? _self.principalOutstandingKobo : principalOutstandingKobo // ignore: cast_nullable_to_non_nullable
as int,postedInterestKobo: null == postedInterestKobo ? _self.postedInterestKobo : postedInterestKobo // ignore: cast_nullable_to_non_nullable
as int,postedFeesKobo: null == postedFeesKobo ? _self.postedFeesKobo : postedFeesKobo // ignore: cast_nullable_to_non_nullable
as int,postedPenaltiesKobo: null == postedPenaltiesKobo ? _self.postedPenaltiesKobo : postedPenaltiesKobo // ignore: cast_nullable_to_non_nullable
as int,reservedKobo: null == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int,accruedInterestUnpostedKobo: null == accruedInterestUnpostedKobo ? _self.accruedInterestUnpostedKobo : accruedInterestUnpostedKobo // ignore: cast_nullable_to_non_nullable
as int,availableKobo: null == availableKobo ? _self.availableKobo : availableKobo // ignore: cast_nullable_to_non_nullable
as int,totalOwedKobo: null == totalOwedKobo ? _self.totalOwedKobo : totalOwedKobo // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreditAccountStatus,consecutiveMissedDeductions: null == consecutiveMissedDeductions ? _self.consecutiveMissedDeductions : consecutiveMissedDeductions // ignore: cast_nullable_to_non_nullable
as int,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
