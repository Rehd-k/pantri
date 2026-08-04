// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreditSummary {

 int get creditLimitKobo; int get outstandingKobo; int get availableKobo; int get reservedKobo;
/// Create a copy of CreditSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditSummaryCopyWith<CreditSummary> get copyWith => _$CreditSummaryCopyWithImpl<CreditSummary>(this as CreditSummary, _$identity);

  /// Serializes this CreditSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditSummary&&(identical(other.creditLimitKobo, creditLimitKobo) || other.creditLimitKobo == creditLimitKobo)&&(identical(other.outstandingKobo, outstandingKobo) || other.outstandingKobo == outstandingKobo)&&(identical(other.availableKobo, availableKobo) || other.availableKobo == availableKobo)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,creditLimitKobo,outstandingKobo,availableKobo,reservedKobo);

@override
String toString() {
  return 'CreditSummary(creditLimitKobo: $creditLimitKobo, outstandingKobo: $outstandingKobo, availableKobo: $availableKobo, reservedKobo: $reservedKobo)';
}


}

/// @nodoc
abstract mixin class $CreditSummaryCopyWith<$Res>  {
  factory $CreditSummaryCopyWith(CreditSummary value, $Res Function(CreditSummary) _then) = _$CreditSummaryCopyWithImpl;
@useResult
$Res call({
 int creditLimitKobo, int outstandingKobo, int availableKobo, int reservedKobo
});




}
/// @nodoc
class _$CreditSummaryCopyWithImpl<$Res>
    implements $CreditSummaryCopyWith<$Res> {
  _$CreditSummaryCopyWithImpl(this._self, this._then);

  final CreditSummary _self;
  final $Res Function(CreditSummary) _then;

/// Create a copy of CreditSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? creditLimitKobo = null,Object? outstandingKobo = null,Object? availableKobo = null,Object? reservedKobo = null,}) {
  return _then(_self.copyWith(
creditLimitKobo: null == creditLimitKobo ? _self.creditLimitKobo : creditLimitKobo // ignore: cast_nullable_to_non_nullable
as int,outstandingKobo: null == outstandingKobo ? _self.outstandingKobo : outstandingKobo // ignore: cast_nullable_to_non_nullable
as int,availableKobo: null == availableKobo ? _self.availableKobo : availableKobo // ignore: cast_nullable_to_non_nullable
as int,reservedKobo: null == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditSummary].
extension CreditSummaryPatterns on CreditSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditSummary value)  $default,){
final _that = this;
switch (_that) {
case _CreditSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditSummary value)?  $default,){
final _that = this;
switch (_that) {
case _CreditSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int creditLimitKobo,  int outstandingKobo,  int availableKobo,  int reservedKobo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditSummary() when $default != null:
return $default(_that.creditLimitKobo,_that.outstandingKobo,_that.availableKobo,_that.reservedKobo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int creditLimitKobo,  int outstandingKobo,  int availableKobo,  int reservedKobo)  $default,) {final _that = this;
switch (_that) {
case _CreditSummary():
return $default(_that.creditLimitKobo,_that.outstandingKobo,_that.availableKobo,_that.reservedKobo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int creditLimitKobo,  int outstandingKobo,  int availableKobo,  int reservedKobo)?  $default,) {final _that = this;
switch (_that) {
case _CreditSummary() when $default != null:
return $default(_that.creditLimitKobo,_that.outstandingKobo,_that.availableKobo,_that.reservedKobo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreditSummary implements CreditSummary {
  const _CreditSummary({required this.creditLimitKobo, required this.outstandingKobo, required this.availableKobo, required this.reservedKobo});
  factory _CreditSummary.fromJson(Map<String, dynamic> json) => _$CreditSummaryFromJson(json);

@override final  int creditLimitKobo;
@override final  int outstandingKobo;
@override final  int availableKobo;
@override final  int reservedKobo;

/// Create a copy of CreditSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditSummaryCopyWith<_CreditSummary> get copyWith => __$CreditSummaryCopyWithImpl<_CreditSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreditSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditSummary&&(identical(other.creditLimitKobo, creditLimitKobo) || other.creditLimitKobo == creditLimitKobo)&&(identical(other.outstandingKobo, outstandingKobo) || other.outstandingKobo == outstandingKobo)&&(identical(other.availableKobo, availableKobo) || other.availableKobo == availableKobo)&&(identical(other.reservedKobo, reservedKobo) || other.reservedKobo == reservedKobo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,creditLimitKobo,outstandingKobo,availableKobo,reservedKobo);

@override
String toString() {
  return 'CreditSummary(creditLimitKobo: $creditLimitKobo, outstandingKobo: $outstandingKobo, availableKobo: $availableKobo, reservedKobo: $reservedKobo)';
}


}

/// @nodoc
abstract mixin class _$CreditSummaryCopyWith<$Res> implements $CreditSummaryCopyWith<$Res> {
  factory _$CreditSummaryCopyWith(_CreditSummary value, $Res Function(_CreditSummary) _then) = __$CreditSummaryCopyWithImpl;
@override @useResult
$Res call({
 int creditLimitKobo, int outstandingKobo, int availableKobo, int reservedKobo
});




}
/// @nodoc
class __$CreditSummaryCopyWithImpl<$Res>
    implements _$CreditSummaryCopyWith<$Res> {
  __$CreditSummaryCopyWithImpl(this._self, this._then);

  final _CreditSummary _self;
  final $Res Function(_CreditSummary) _then;

/// Create a copy of CreditSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? creditLimitKobo = null,Object? outstandingKobo = null,Object? availableKobo = null,Object? reservedKobo = null,}) {
  return _then(_CreditSummary(
creditLimitKobo: null == creditLimitKobo ? _self.creditLimitKobo : creditLimitKobo // ignore: cast_nullable_to_non_nullable
as int,outstandingKobo: null == outstandingKobo ? _self.outstandingKobo : outstandingKobo // ignore: cast_nullable_to_non_nullable
as int,availableKobo: null == availableKobo ? _self.availableKobo : availableKobo // ignore: cast_nullable_to_non_nullable
as int,reservedKobo: null == reservedKobo ? _self.reservedKobo : reservedKobo // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$NextDeduction {

 int get amountKobo; String get scheduledFor;
/// Create a copy of NextDeduction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NextDeductionCopyWith<NextDeduction> get copyWith => _$NextDeductionCopyWithImpl<NextDeduction>(this as NextDeduction, _$identity);

  /// Serializes this NextDeduction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextDeduction&&(identical(other.amountKobo, amountKobo) || other.amountKobo == amountKobo)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountKobo,scheduledFor);

@override
String toString() {
  return 'NextDeduction(amountKobo: $amountKobo, scheduledFor: $scheduledFor)';
}


}

/// @nodoc
abstract mixin class $NextDeductionCopyWith<$Res>  {
  factory $NextDeductionCopyWith(NextDeduction value, $Res Function(NextDeduction) _then) = _$NextDeductionCopyWithImpl;
@useResult
$Res call({
 int amountKobo, String scheduledFor
});




}
/// @nodoc
class _$NextDeductionCopyWithImpl<$Res>
    implements $NextDeductionCopyWith<$Res> {
  _$NextDeductionCopyWithImpl(this._self, this._then);

  final NextDeduction _self;
  final $Res Function(NextDeduction) _then;

/// Create a copy of NextDeduction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amountKobo = null,Object? scheduledFor = null,}) {
  return _then(_self.copyWith(
amountKobo: null == amountKobo ? _self.amountKobo : amountKobo // ignore: cast_nullable_to_non_nullable
as int,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NextDeduction].
extension NextDeductionPatterns on NextDeduction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NextDeduction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NextDeduction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NextDeduction value)  $default,){
final _that = this;
switch (_that) {
case _NextDeduction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NextDeduction value)?  $default,){
final _that = this;
switch (_that) {
case _NextDeduction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amountKobo,  String scheduledFor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NextDeduction() when $default != null:
return $default(_that.amountKobo,_that.scheduledFor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amountKobo,  String scheduledFor)  $default,) {final _that = this;
switch (_that) {
case _NextDeduction():
return $default(_that.amountKobo,_that.scheduledFor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amountKobo,  String scheduledFor)?  $default,) {final _that = this;
switch (_that) {
case _NextDeduction() when $default != null:
return $default(_that.amountKobo,_that.scheduledFor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NextDeduction implements NextDeduction {
  const _NextDeduction({required this.amountKobo, required this.scheduledFor});
  factory _NextDeduction.fromJson(Map<String, dynamic> json) => _$NextDeductionFromJson(json);

@override final  int amountKobo;
@override final  String scheduledFor;

/// Create a copy of NextDeduction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NextDeductionCopyWith<_NextDeduction> get copyWith => __$NextDeductionCopyWithImpl<_NextDeduction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NextDeductionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextDeduction&&(identical(other.amountKobo, amountKobo) || other.amountKobo == amountKobo)&&(identical(other.scheduledFor, scheduledFor) || other.scheduledFor == scheduledFor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountKobo,scheduledFor);

@override
String toString() {
  return 'NextDeduction(amountKobo: $amountKobo, scheduledFor: $scheduledFor)';
}


}

/// @nodoc
abstract mixin class _$NextDeductionCopyWith<$Res> implements $NextDeductionCopyWith<$Res> {
  factory _$NextDeductionCopyWith(_NextDeduction value, $Res Function(_NextDeduction) _then) = __$NextDeductionCopyWithImpl;
@override @useResult
$Res call({
 int amountKobo, String scheduledFor
});




}
/// @nodoc
class __$NextDeductionCopyWithImpl<$Res>
    implements _$NextDeductionCopyWith<$Res> {
  __$NextDeductionCopyWithImpl(this._self, this._then);

  final _NextDeduction _self;
  final $Res Function(_NextDeduction) _then;

/// Create a copy of NextDeduction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountKobo = null,Object? scheduledFor = null,}) {
  return _then(_NextDeduction(
amountKobo: null == amountKobo ? _self.amountKobo : amountKobo // ignore: cast_nullable_to_non_nullable
as int,scheduledFor: null == scheduledFor ? _self.scheduledFor : scheduledFor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EmployeeDashboard {

 CreditSummary get credit; NextDeduction? get nextDeduction;
/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeDashboardCopyWith<EmployeeDashboard> get copyWith => _$EmployeeDashboardCopyWithImpl<EmployeeDashboard>(this as EmployeeDashboard, _$identity);

  /// Serializes this EmployeeDashboard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeDashboard&&(identical(other.credit, credit) || other.credit == credit)&&(identical(other.nextDeduction, nextDeduction) || other.nextDeduction == nextDeduction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,credit,nextDeduction);

@override
String toString() {
  return 'EmployeeDashboard(credit: $credit, nextDeduction: $nextDeduction)';
}


}

/// @nodoc
abstract mixin class $EmployeeDashboardCopyWith<$Res>  {
  factory $EmployeeDashboardCopyWith(EmployeeDashboard value, $Res Function(EmployeeDashboard) _then) = _$EmployeeDashboardCopyWithImpl;
@useResult
$Res call({
 CreditSummary credit, NextDeduction? nextDeduction
});


$CreditSummaryCopyWith<$Res> get credit;$NextDeductionCopyWith<$Res>? get nextDeduction;

}
/// @nodoc
class _$EmployeeDashboardCopyWithImpl<$Res>
    implements $EmployeeDashboardCopyWith<$Res> {
  _$EmployeeDashboardCopyWithImpl(this._self, this._then);

  final EmployeeDashboard _self;
  final $Res Function(EmployeeDashboard) _then;

/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? credit = null,Object? nextDeduction = freezed,}) {
  return _then(_self.copyWith(
credit: null == credit ? _self.credit : credit // ignore: cast_nullable_to_non_nullable
as CreditSummary,nextDeduction: freezed == nextDeduction ? _self.nextDeduction : nextDeduction // ignore: cast_nullable_to_non_nullable
as NextDeduction?,
  ));
}
/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreditSummaryCopyWith<$Res> get credit {
  
  return $CreditSummaryCopyWith<$Res>(_self.credit, (value) {
    return _then(_self.copyWith(credit: value));
  });
}/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NextDeductionCopyWith<$Res>? get nextDeduction {
    if (_self.nextDeduction == null) {
    return null;
  }

  return $NextDeductionCopyWith<$Res>(_self.nextDeduction!, (value) {
    return _then(_self.copyWith(nextDeduction: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeeDashboard].
extension EmployeeDashboardPatterns on EmployeeDashboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeDashboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeDashboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeDashboard value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeDashboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeDashboard value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeDashboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreditSummary credit,  NextDeduction? nextDeduction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeDashboard() when $default != null:
return $default(_that.credit,_that.nextDeduction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreditSummary credit,  NextDeduction? nextDeduction)  $default,) {final _that = this;
switch (_that) {
case _EmployeeDashboard():
return $default(_that.credit,_that.nextDeduction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreditSummary credit,  NextDeduction? nextDeduction)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeDashboard() when $default != null:
return $default(_that.credit,_that.nextDeduction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeDashboard implements EmployeeDashboard {
  const _EmployeeDashboard({required this.credit, this.nextDeduction});
  factory _EmployeeDashboard.fromJson(Map<String, dynamic> json) => _$EmployeeDashboardFromJson(json);

@override final  CreditSummary credit;
@override final  NextDeduction? nextDeduction;

/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeDashboardCopyWith<_EmployeeDashboard> get copyWith => __$EmployeeDashboardCopyWithImpl<_EmployeeDashboard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeDashboardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeDashboard&&(identical(other.credit, credit) || other.credit == credit)&&(identical(other.nextDeduction, nextDeduction) || other.nextDeduction == nextDeduction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,credit,nextDeduction);

@override
String toString() {
  return 'EmployeeDashboard(credit: $credit, nextDeduction: $nextDeduction)';
}


}

/// @nodoc
abstract mixin class _$EmployeeDashboardCopyWith<$Res> implements $EmployeeDashboardCopyWith<$Res> {
  factory _$EmployeeDashboardCopyWith(_EmployeeDashboard value, $Res Function(_EmployeeDashboard) _then) = __$EmployeeDashboardCopyWithImpl;
@override @useResult
$Res call({
 CreditSummary credit, NextDeduction? nextDeduction
});


@override $CreditSummaryCopyWith<$Res> get credit;@override $NextDeductionCopyWith<$Res>? get nextDeduction;

}
/// @nodoc
class __$EmployeeDashboardCopyWithImpl<$Res>
    implements _$EmployeeDashboardCopyWith<$Res> {
  __$EmployeeDashboardCopyWithImpl(this._self, this._then);

  final _EmployeeDashboard _self;
  final $Res Function(_EmployeeDashboard) _then;

/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? credit = null,Object? nextDeduction = freezed,}) {
  return _then(_EmployeeDashboard(
credit: null == credit ? _self.credit : credit // ignore: cast_nullable_to_non_nullable
as CreditSummary,nextDeduction: freezed == nextDeduction ? _self.nextDeduction : nextDeduction // ignore: cast_nullable_to_non_nullable
as NextDeduction?,
  ));
}

/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreditSummaryCopyWith<$Res> get credit {
  
  return $CreditSummaryCopyWith<$Res>(_self.credit, (value) {
    return _then(_self.copyWith(credit: value));
  });
}/// Create a copy of EmployeeDashboard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NextDeductionCopyWith<$Res>? get nextDeduction {
    if (_self.nextDeduction == null) {
    return null;
  }

  return $NextDeductionCopyWith<$Res>(_self.nextDeduction!, (value) {
    return _then(_self.copyWith(nextDeduction: value));
  });
}
}

// dart format on
