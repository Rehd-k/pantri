// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeasureUnit {

 String get id; String get slug; String get name; String get shortLabel; String get kind; String get dimension; int? get milligrams; int? get millilitres; int? get piecesPerUnit; bool get isPurchaseUnit; bool get isRecipeUnit; int get sortOrder; bool get isActive; String get createdAt; String get updatedAt;
/// Create a copy of MeasureUnit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasureUnitCopyWith<MeasureUnit> get copyWith => _$MeasureUnitCopyWithImpl<MeasureUnit>(this as MeasureUnit, _$identity);

  /// Serializes this MeasureUnit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasureUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortLabel, shortLabel) || other.shortLabel == shortLabel)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.milligrams, milligrams) || other.milligrams == milligrams)&&(identical(other.millilitres, millilitres) || other.millilitres == millilitres)&&(identical(other.piecesPerUnit, piecesPerUnit) || other.piecesPerUnit == piecesPerUnit)&&(identical(other.isPurchaseUnit, isPurchaseUnit) || other.isPurchaseUnit == isPurchaseUnit)&&(identical(other.isRecipeUnit, isRecipeUnit) || other.isRecipeUnit == isRecipeUnit)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,shortLabel,kind,dimension,milligrams,millilitres,piecesPerUnit,isPurchaseUnit,isRecipeUnit,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MeasureUnit(id: $id, slug: $slug, name: $name, shortLabel: $shortLabel, kind: $kind, dimension: $dimension, milligrams: $milligrams, millilitres: $millilitres, piecesPerUnit: $piecesPerUnit, isPurchaseUnit: $isPurchaseUnit, isRecipeUnit: $isRecipeUnit, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MeasureUnitCopyWith<$Res>  {
  factory $MeasureUnitCopyWith(MeasureUnit value, $Res Function(MeasureUnit) _then) = _$MeasureUnitCopyWithImpl;
@useResult
$Res call({
 String id, String slug, String name, String shortLabel, String kind, String dimension, int? milligrams, int? millilitres, int? piecesPerUnit, bool isPurchaseUnit, bool isRecipeUnit, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class _$MeasureUnitCopyWithImpl<$Res>
    implements $MeasureUnitCopyWith<$Res> {
  _$MeasureUnitCopyWithImpl(this._self, this._then);

  final MeasureUnit _self;
  final $Res Function(MeasureUnit) _then;

/// Create a copy of MeasureUnit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? shortLabel = null,Object? kind = null,Object? dimension = null,Object? milligrams = freezed,Object? millilitres = freezed,Object? piecesPerUnit = freezed,Object? isPurchaseUnit = null,Object? isRecipeUnit = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortLabel: null == shortLabel ? _self.shortLabel : shortLabel // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,milligrams: freezed == milligrams ? _self.milligrams : milligrams // ignore: cast_nullable_to_non_nullable
as int?,millilitres: freezed == millilitres ? _self.millilitres : millilitres // ignore: cast_nullable_to_non_nullable
as int?,piecesPerUnit: freezed == piecesPerUnit ? _self.piecesPerUnit : piecesPerUnit // ignore: cast_nullable_to_non_nullable
as int?,isPurchaseUnit: null == isPurchaseUnit ? _self.isPurchaseUnit : isPurchaseUnit // ignore: cast_nullable_to_non_nullable
as bool,isRecipeUnit: null == isRecipeUnit ? _self.isRecipeUnit : isRecipeUnit // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MeasureUnit].
extension MeasureUnitPatterns on MeasureUnit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeasureUnit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeasureUnit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeasureUnit value)  $default,){
final _that = this;
switch (_that) {
case _MeasureUnit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeasureUnit value)?  $default,){
final _that = this;
switch (_that) {
case _MeasureUnit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String slug,  String name,  String shortLabel,  String kind,  String dimension,  int? milligrams,  int? millilitres,  int? piecesPerUnit,  bool isPurchaseUnit,  bool isRecipeUnit,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeasureUnit() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.shortLabel,_that.kind,_that.dimension,_that.milligrams,_that.millilitres,_that.piecesPerUnit,_that.isPurchaseUnit,_that.isRecipeUnit,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String slug,  String name,  String shortLabel,  String kind,  String dimension,  int? milligrams,  int? millilitres,  int? piecesPerUnit,  bool isPurchaseUnit,  bool isRecipeUnit,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MeasureUnit():
return $default(_that.id,_that.slug,_that.name,_that.shortLabel,_that.kind,_that.dimension,_that.milligrams,_that.millilitres,_that.piecesPerUnit,_that.isPurchaseUnit,_that.isRecipeUnit,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String slug,  String name,  String shortLabel,  String kind,  String dimension,  int? milligrams,  int? millilitres,  int? piecesPerUnit,  bool isPurchaseUnit,  bool isRecipeUnit,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MeasureUnit() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.shortLabel,_that.kind,_that.dimension,_that.milligrams,_that.millilitres,_that.piecesPerUnit,_that.isPurchaseUnit,_that.isRecipeUnit,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeasureUnit implements MeasureUnit {
  const _MeasureUnit({required this.id, required this.slug, required this.name, required this.shortLabel, required this.kind, required this.dimension, this.milligrams, this.millilitres, this.piecesPerUnit, required this.isPurchaseUnit, required this.isRecipeUnit, required this.sortOrder, required this.isActive, required this.createdAt, required this.updatedAt});
  factory _MeasureUnit.fromJson(Map<String, dynamic> json) => _$MeasureUnitFromJson(json);

@override final  String id;
@override final  String slug;
@override final  String name;
@override final  String shortLabel;
@override final  String kind;
@override final  String dimension;
@override final  int? milligrams;
@override final  int? millilitres;
@override final  int? piecesPerUnit;
@override final  bool isPurchaseUnit;
@override final  bool isRecipeUnit;
@override final  int sortOrder;
@override final  bool isActive;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of MeasureUnit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasureUnitCopyWith<_MeasureUnit> get copyWith => __$MeasureUnitCopyWithImpl<_MeasureUnit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeasureUnitToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasureUnit&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortLabel, shortLabel) || other.shortLabel == shortLabel)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.milligrams, milligrams) || other.milligrams == milligrams)&&(identical(other.millilitres, millilitres) || other.millilitres == millilitres)&&(identical(other.piecesPerUnit, piecesPerUnit) || other.piecesPerUnit == piecesPerUnit)&&(identical(other.isPurchaseUnit, isPurchaseUnit) || other.isPurchaseUnit == isPurchaseUnit)&&(identical(other.isRecipeUnit, isRecipeUnit) || other.isRecipeUnit == isRecipeUnit)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,shortLabel,kind,dimension,milligrams,millilitres,piecesPerUnit,isPurchaseUnit,isRecipeUnit,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MeasureUnit(id: $id, slug: $slug, name: $name, shortLabel: $shortLabel, kind: $kind, dimension: $dimension, milligrams: $milligrams, millilitres: $millilitres, piecesPerUnit: $piecesPerUnit, isPurchaseUnit: $isPurchaseUnit, isRecipeUnit: $isRecipeUnit, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MeasureUnitCopyWith<$Res> implements $MeasureUnitCopyWith<$Res> {
  factory _$MeasureUnitCopyWith(_MeasureUnit value, $Res Function(_MeasureUnit) _then) = __$MeasureUnitCopyWithImpl;
@override @useResult
$Res call({
 String id, String slug, String name, String shortLabel, String kind, String dimension, int? milligrams, int? millilitres, int? piecesPerUnit, bool isPurchaseUnit, bool isRecipeUnit, int sortOrder, bool isActive, String createdAt, String updatedAt
});




}
/// @nodoc
class __$MeasureUnitCopyWithImpl<$Res>
    implements _$MeasureUnitCopyWith<$Res> {
  __$MeasureUnitCopyWithImpl(this._self, this._then);

  final _MeasureUnit _self;
  final $Res Function(_MeasureUnit) _then;

/// Create a copy of MeasureUnit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? shortLabel = null,Object? kind = null,Object? dimension = null,Object? milligrams = freezed,Object? millilitres = freezed,Object? piecesPerUnit = freezed,Object? isPurchaseUnit = null,Object? isRecipeUnit = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MeasureUnit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortLabel: null == shortLabel ? _self.shortLabel : shortLabel // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,milligrams: freezed == milligrams ? _self.milligrams : milligrams // ignore: cast_nullable_to_non_nullable
as int?,millilitres: freezed == millilitres ? _self.millilitres : millilitres // ignore: cast_nullable_to_non_nullable
as int?,piecesPerUnit: freezed == piecesPerUnit ? _self.piecesPerUnit : piecesPerUnit // ignore: cast_nullable_to_non_nullable
as int?,isPurchaseUnit: null == isPurchaseUnit ? _self.isPurchaseUnit : isPurchaseUnit // ignore: cast_nullable_to_non_nullable
as bool,isRecipeUnit: null == isRecipeUnit ? _self.isRecipeUnit : isRecipeUnit // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MeasureFamily {

 String get id; String get slug; String get name; String get description; String get dimension; String? get defaultRecipeUnitId; String? get defaultPurchaseUnitId; MeasureUnit? get defaultRecipeUnit; MeasureUnit? get defaultPurchaseUnit; int get sortOrder; bool get isActive; String get createdAt; String get updatedAt;
/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeasureFamilyCopyWith<MeasureFamily> get copyWith => _$MeasureFamilyCopyWithImpl<MeasureFamily>(this as MeasureFamily, _$identity);

  /// Serializes this MeasureFamily to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeasureFamily&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.defaultRecipeUnitId, defaultRecipeUnitId) || other.defaultRecipeUnitId == defaultRecipeUnitId)&&(identical(other.defaultPurchaseUnitId, defaultPurchaseUnitId) || other.defaultPurchaseUnitId == defaultPurchaseUnitId)&&(identical(other.defaultRecipeUnit, defaultRecipeUnit) || other.defaultRecipeUnit == defaultRecipeUnit)&&(identical(other.defaultPurchaseUnit, defaultPurchaseUnit) || other.defaultPurchaseUnit == defaultPurchaseUnit)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,description,dimension,defaultRecipeUnitId,defaultPurchaseUnitId,defaultRecipeUnit,defaultPurchaseUnit,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MeasureFamily(id: $id, slug: $slug, name: $name, description: $description, dimension: $dimension, defaultRecipeUnitId: $defaultRecipeUnitId, defaultPurchaseUnitId: $defaultPurchaseUnitId, defaultRecipeUnit: $defaultRecipeUnit, defaultPurchaseUnit: $defaultPurchaseUnit, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MeasureFamilyCopyWith<$Res>  {
  factory $MeasureFamilyCopyWith(MeasureFamily value, $Res Function(MeasureFamily) _then) = _$MeasureFamilyCopyWithImpl;
@useResult
$Res call({
 String id, String slug, String name, String description, String dimension, String? defaultRecipeUnitId, String? defaultPurchaseUnitId, MeasureUnit? defaultRecipeUnit, MeasureUnit? defaultPurchaseUnit, int sortOrder, bool isActive, String createdAt, String updatedAt
});


$MeasureUnitCopyWith<$Res>? get defaultRecipeUnit;$MeasureUnitCopyWith<$Res>? get defaultPurchaseUnit;

}
/// @nodoc
class _$MeasureFamilyCopyWithImpl<$Res>
    implements $MeasureFamilyCopyWith<$Res> {
  _$MeasureFamilyCopyWithImpl(this._self, this._then);

  final MeasureFamily _self;
  final $Res Function(MeasureFamily) _then;

/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? description = null,Object? dimension = null,Object? defaultRecipeUnitId = freezed,Object? defaultPurchaseUnitId = freezed,Object? defaultRecipeUnit = freezed,Object? defaultPurchaseUnit = freezed,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,defaultRecipeUnitId: freezed == defaultRecipeUnitId ? _self.defaultRecipeUnitId : defaultRecipeUnitId // ignore: cast_nullable_to_non_nullable
as String?,defaultPurchaseUnitId: freezed == defaultPurchaseUnitId ? _self.defaultPurchaseUnitId : defaultPurchaseUnitId // ignore: cast_nullable_to_non_nullable
as String?,defaultRecipeUnit: freezed == defaultRecipeUnit ? _self.defaultRecipeUnit : defaultRecipeUnit // ignore: cast_nullable_to_non_nullable
as MeasureUnit?,defaultPurchaseUnit: freezed == defaultPurchaseUnit ? _self.defaultPurchaseUnit : defaultPurchaseUnit // ignore: cast_nullable_to_non_nullable
as MeasureUnit?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureUnitCopyWith<$Res>? get defaultRecipeUnit {
    if (_self.defaultRecipeUnit == null) {
    return null;
  }

  return $MeasureUnitCopyWith<$Res>(_self.defaultRecipeUnit!, (value) {
    return _then(_self.copyWith(defaultRecipeUnit: value));
  });
}/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureUnitCopyWith<$Res>? get defaultPurchaseUnit {
    if (_self.defaultPurchaseUnit == null) {
    return null;
  }

  return $MeasureUnitCopyWith<$Res>(_self.defaultPurchaseUnit!, (value) {
    return _then(_self.copyWith(defaultPurchaseUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [MeasureFamily].
extension MeasureFamilyPatterns on MeasureFamily {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeasureFamily value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeasureFamily() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeasureFamily value)  $default,){
final _that = this;
switch (_that) {
case _MeasureFamily():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeasureFamily value)?  $default,){
final _that = this;
switch (_that) {
case _MeasureFamily() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String slug,  String name,  String description,  String dimension,  String? defaultRecipeUnitId,  String? defaultPurchaseUnitId,  MeasureUnit? defaultRecipeUnit,  MeasureUnit? defaultPurchaseUnit,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeasureFamily() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.description,_that.dimension,_that.defaultRecipeUnitId,_that.defaultPurchaseUnitId,_that.defaultRecipeUnit,_that.defaultPurchaseUnit,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String slug,  String name,  String description,  String dimension,  String? defaultRecipeUnitId,  String? defaultPurchaseUnitId,  MeasureUnit? defaultRecipeUnit,  MeasureUnit? defaultPurchaseUnit,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MeasureFamily():
return $default(_that.id,_that.slug,_that.name,_that.description,_that.dimension,_that.defaultRecipeUnitId,_that.defaultPurchaseUnitId,_that.defaultRecipeUnit,_that.defaultPurchaseUnit,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String slug,  String name,  String description,  String dimension,  String? defaultRecipeUnitId,  String? defaultPurchaseUnitId,  MeasureUnit? defaultRecipeUnit,  MeasureUnit? defaultPurchaseUnit,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MeasureFamily() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.description,_that.dimension,_that.defaultRecipeUnitId,_that.defaultPurchaseUnitId,_that.defaultRecipeUnit,_that.defaultPurchaseUnit,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeasureFamily implements MeasureFamily {
  const _MeasureFamily({required this.id, required this.slug, required this.name, this.description = '', required this.dimension, this.defaultRecipeUnitId, this.defaultPurchaseUnitId, this.defaultRecipeUnit, this.defaultPurchaseUnit, required this.sortOrder, required this.isActive, required this.createdAt, required this.updatedAt});
  factory _MeasureFamily.fromJson(Map<String, dynamic> json) => _$MeasureFamilyFromJson(json);

@override final  String id;
@override final  String slug;
@override final  String name;
@override@JsonKey() final  String description;
@override final  String dimension;
@override final  String? defaultRecipeUnitId;
@override final  String? defaultPurchaseUnitId;
@override final  MeasureUnit? defaultRecipeUnit;
@override final  MeasureUnit? defaultPurchaseUnit;
@override final  int sortOrder;
@override final  bool isActive;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeasureFamilyCopyWith<_MeasureFamily> get copyWith => __$MeasureFamilyCopyWithImpl<_MeasureFamily>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeasureFamilyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeasureFamily&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.dimension, dimension) || other.dimension == dimension)&&(identical(other.defaultRecipeUnitId, defaultRecipeUnitId) || other.defaultRecipeUnitId == defaultRecipeUnitId)&&(identical(other.defaultPurchaseUnitId, defaultPurchaseUnitId) || other.defaultPurchaseUnitId == defaultPurchaseUnitId)&&(identical(other.defaultRecipeUnit, defaultRecipeUnit) || other.defaultRecipeUnit == defaultRecipeUnit)&&(identical(other.defaultPurchaseUnit, defaultPurchaseUnit) || other.defaultPurchaseUnit == defaultPurchaseUnit)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,slug,name,description,dimension,defaultRecipeUnitId,defaultPurchaseUnitId,defaultRecipeUnit,defaultPurchaseUnit,sortOrder,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'MeasureFamily(id: $id, slug: $slug, name: $name, description: $description, dimension: $dimension, defaultRecipeUnitId: $defaultRecipeUnitId, defaultPurchaseUnitId: $defaultPurchaseUnitId, defaultRecipeUnit: $defaultRecipeUnit, defaultPurchaseUnit: $defaultPurchaseUnit, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MeasureFamilyCopyWith<$Res> implements $MeasureFamilyCopyWith<$Res> {
  factory _$MeasureFamilyCopyWith(_MeasureFamily value, $Res Function(_MeasureFamily) _then) = __$MeasureFamilyCopyWithImpl;
@override @useResult
$Res call({
 String id, String slug, String name, String description, String dimension, String? defaultRecipeUnitId, String? defaultPurchaseUnitId, MeasureUnit? defaultRecipeUnit, MeasureUnit? defaultPurchaseUnit, int sortOrder, bool isActive, String createdAt, String updatedAt
});


@override $MeasureUnitCopyWith<$Res>? get defaultRecipeUnit;@override $MeasureUnitCopyWith<$Res>? get defaultPurchaseUnit;

}
/// @nodoc
class __$MeasureFamilyCopyWithImpl<$Res>
    implements _$MeasureFamilyCopyWith<$Res> {
  __$MeasureFamilyCopyWithImpl(this._self, this._then);

  final _MeasureFamily _self;
  final $Res Function(_MeasureFamily) _then;

/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? description = null,Object? dimension = null,Object? defaultRecipeUnitId = freezed,Object? defaultPurchaseUnitId = freezed,Object? defaultRecipeUnit = freezed,Object? defaultPurchaseUnit = freezed,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MeasureFamily(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dimension: null == dimension ? _self.dimension : dimension // ignore: cast_nullable_to_non_nullable
as String,defaultRecipeUnitId: freezed == defaultRecipeUnitId ? _self.defaultRecipeUnitId : defaultRecipeUnitId // ignore: cast_nullable_to_non_nullable
as String?,defaultPurchaseUnitId: freezed == defaultPurchaseUnitId ? _self.defaultPurchaseUnitId : defaultPurchaseUnitId // ignore: cast_nullable_to_non_nullable
as String?,defaultRecipeUnit: freezed == defaultRecipeUnit ? _self.defaultRecipeUnit : defaultRecipeUnit // ignore: cast_nullable_to_non_nullable
as MeasureUnit?,defaultPurchaseUnit: freezed == defaultPurchaseUnit ? _self.defaultPurchaseUnit : defaultPurchaseUnit // ignore: cast_nullable_to_non_nullable
as MeasureUnit?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureUnitCopyWith<$Res>? get defaultRecipeUnit {
    if (_self.defaultRecipeUnit == null) {
    return null;
  }

  return $MeasureUnitCopyWith<$Res>(_self.defaultRecipeUnit!, (value) {
    return _then(_self.copyWith(defaultRecipeUnit: value));
  });
}/// Create a copy of MeasureFamily
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureUnitCopyWith<$Res>? get defaultPurchaseUnit {
    if (_self.defaultPurchaseUnit == null) {
    return null;
  }

  return $MeasureUnitCopyWith<$Res>(_self.defaultPurchaseUnit!, (value) {
    return _then(_self.copyWith(defaultPurchaseUnit: value));
  });
}
}


/// @nodoc
mixin _$ProductPack {

 String get id; String get sku; String get productId; String get packUnitId; MeasureUnit get packUnit; String get brand; int get packAmount; int? get amountMg; int? get amountMl; int? get amountEach; String get packageLabel; String get imageUrl; int get priceKobo; int get retailPriceKobo; int get discountPercent; int get sortOrder; bool get isActive; String get createdAt; String get updatedAt;
/// Create a copy of ProductPack
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPackCopyWith<ProductPack> get copyWith => _$ProductPackCopyWithImpl<ProductPack>(this as ProductPack, _$identity);

  /// Serializes this ProductPack to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPack&&(identical(other.id, id) || other.id == id)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packAmount, packAmount) || other.packAmount == packAmount)&&(identical(other.amountMg, amountMg) || other.amountMg == amountMg)&&(identical(other.amountMl, amountMl) || other.amountMl == amountMl)&&(identical(other.amountEach, amountEach) || other.amountEach == amountEach)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sku,productId,packUnitId,packUnit,brand,packAmount,amountMg,amountMl,amountEach,packageLabel,imageUrl,priceKobo,retailPriceKobo,discountPercent,sortOrder,isActive,createdAt,updatedAt]);

@override
String toString() {
  return 'ProductPack(id: $id, sku: $sku, productId: $productId, packUnitId: $packUnitId, packUnit: $packUnit, brand: $brand, packAmount: $packAmount, amountMg: $amountMg, amountMl: $amountMl, amountEach: $amountEach, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductPackCopyWith<$Res>  {
  factory $ProductPackCopyWith(ProductPack value, $Res Function(ProductPack) _then) = _$ProductPackCopyWithImpl;
@useResult
$Res call({
 String id, String sku, String productId, String packUnitId, MeasureUnit packUnit, String brand, int packAmount, int? amountMg, int? amountMl, int? amountEach, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int discountPercent, int sortOrder, bool isActive, String createdAt, String updatedAt
});


$MeasureUnitCopyWith<$Res> get packUnit;

}
/// @nodoc
class _$ProductPackCopyWithImpl<$Res>
    implements $ProductPackCopyWith<$Res> {
  _$ProductPackCopyWithImpl(this._self, this._then);

  final ProductPack _self;
  final $Res Function(ProductPack) _then;

/// Create a copy of ProductPack
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sku = null,Object? productId = null,Object? packUnitId = null,Object? packUnit = null,Object? brand = null,Object? packAmount = null,Object? amountMg = freezed,Object? amountMl = freezed,Object? amountEach = freezed,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? discountPercent = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packUnitId: null == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String,packUnit: null == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as MeasureUnit,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packAmount: null == packAmount ? _self.packAmount : packAmount // ignore: cast_nullable_to_non_nullable
as int,amountMg: freezed == amountMg ? _self.amountMg : amountMg // ignore: cast_nullable_to_non_nullable
as int?,amountMl: freezed == amountMl ? _self.amountMl : amountMl // ignore: cast_nullable_to_non_nullable
as int?,amountEach: freezed == amountEach ? _self.amountEach : amountEach // ignore: cast_nullable_to_non_nullable
as int?,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProductPack
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureUnitCopyWith<$Res> get packUnit {
  
  return $MeasureUnitCopyWith<$Res>(_self.packUnit, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductPack].
extension ProductPackPatterns on ProductPack {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductPack value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductPack() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductPack value)  $default,){
final _that = this;
switch (_that) {
case _ProductPack():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductPack value)?  $default,){
final _that = this;
switch (_that) {
case _ProductPack() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String sku,  String productId,  String packUnitId,  MeasureUnit packUnit,  String brand,  int packAmount,  int? amountMg,  int? amountMl,  int? amountEach,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int discountPercent,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductPack() when $default != null:
return $default(_that.id,_that.sku,_that.productId,_that.packUnitId,_that.packUnit,_that.brand,_that.packAmount,_that.amountMg,_that.amountMl,_that.amountEach,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.discountPercent,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String sku,  String productId,  String packUnitId,  MeasureUnit packUnit,  String brand,  int packAmount,  int? amountMg,  int? amountMl,  int? amountEach,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int discountPercent,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductPack():
return $default(_that.id,_that.sku,_that.productId,_that.packUnitId,_that.packUnit,_that.brand,_that.packAmount,_that.amountMg,_that.amountMl,_that.amountEach,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.discountPercent,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String sku,  String productId,  String packUnitId,  MeasureUnit packUnit,  String brand,  int packAmount,  int? amountMg,  int? amountMl,  int? amountEach,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int discountPercent,  int sortOrder,  bool isActive,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductPack() when $default != null:
return $default(_that.id,_that.sku,_that.productId,_that.packUnitId,_that.packUnit,_that.brand,_that.packAmount,_that.amountMg,_that.amountMl,_that.amountEach,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.discountPercent,_that.sortOrder,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductPack implements ProductPack {
  const _ProductPack({required this.id, required this.sku, required this.productId, required this.packUnitId, required this.packUnit, required this.brand, required this.packAmount, this.amountMg, this.amountMl, this.amountEach, required this.packageLabel, required this.imageUrl, required this.priceKobo, required this.retailPriceKobo, required this.discountPercent, required this.sortOrder, required this.isActive, required this.createdAt, required this.updatedAt});
  factory _ProductPack.fromJson(Map<String, dynamic> json) => _$ProductPackFromJson(json);

@override final  String id;
@override final  String sku;
@override final  String productId;
@override final  String packUnitId;
@override final  MeasureUnit packUnit;
@override final  String brand;
@override final  int packAmount;
@override final  int? amountMg;
@override final  int? amountMl;
@override final  int? amountEach;
@override final  String packageLabel;
@override final  String imageUrl;
@override final  int priceKobo;
@override final  int retailPriceKobo;
@override final  int discountPercent;
@override final  int sortOrder;
@override final  bool isActive;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of ProductPack
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPackCopyWith<_ProductPack> get copyWith => __$ProductPackCopyWithImpl<_ProductPack>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPack&&(identical(other.id, id) || other.id == id)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.packUnitId, packUnitId) || other.packUnitId == packUnitId)&&(identical(other.packUnit, packUnit) || other.packUnit == packUnit)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packAmount, packAmount) || other.packAmount == packAmount)&&(identical(other.amountMg, amountMg) || other.amountMg == amountMg)&&(identical(other.amountMl, amountMl) || other.amountMl == amountMl)&&(identical(other.amountEach, amountEach) || other.amountEach == amountEach)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sku,productId,packUnitId,packUnit,brand,packAmount,amountMg,amountMl,amountEach,packageLabel,imageUrl,priceKobo,retailPriceKobo,discountPercent,sortOrder,isActive,createdAt,updatedAt]);

@override
String toString() {
  return 'ProductPack(id: $id, sku: $sku, productId: $productId, packUnitId: $packUnitId, packUnit: $packUnit, brand: $brand, packAmount: $packAmount, amountMg: $amountMg, amountMl: $amountMl, amountEach: $amountEach, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, discountPercent: $discountPercent, sortOrder: $sortOrder, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductPackCopyWith<$Res> implements $ProductPackCopyWith<$Res> {
  factory _$ProductPackCopyWith(_ProductPack value, $Res Function(_ProductPack) _then) = __$ProductPackCopyWithImpl;
@override @useResult
$Res call({
 String id, String sku, String productId, String packUnitId, MeasureUnit packUnit, String brand, int packAmount, int? amountMg, int? amountMl, int? amountEach, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int discountPercent, int sortOrder, bool isActive, String createdAt, String updatedAt
});


@override $MeasureUnitCopyWith<$Res> get packUnit;

}
/// @nodoc
class __$ProductPackCopyWithImpl<$Res>
    implements _$ProductPackCopyWith<$Res> {
  __$ProductPackCopyWithImpl(this._self, this._then);

  final _ProductPack _self;
  final $Res Function(_ProductPack) _then;

/// Create a copy of ProductPack
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sku = null,Object? productId = null,Object? packUnitId = null,Object? packUnit = null,Object? brand = null,Object? packAmount = null,Object? amountMg = freezed,Object? amountMl = freezed,Object? amountEach = freezed,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? discountPercent = null,Object? sortOrder = null,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ProductPack(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,packUnitId: null == packUnitId ? _self.packUnitId : packUnitId // ignore: cast_nullable_to_non_nullable
as String,packUnit: null == packUnit ? _self.packUnit : packUnit // ignore: cast_nullable_to_non_nullable
as MeasureUnit,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packAmount: null == packAmount ? _self.packAmount : packAmount // ignore: cast_nullable_to_non_nullable
as int,amountMg: freezed == amountMg ? _self.amountMg : amountMg // ignore: cast_nullable_to_non_nullable
as int?,amountMl: freezed == amountMl ? _self.amountMl : amountMl // ignore: cast_nullable_to_non_nullable
as int?,amountEach: freezed == amountEach ? _self.amountEach : amountEach // ignore: cast_nullable_to_non_nullable
as int?,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProductPack
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureUnitCopyWith<$Res> get packUnit {
  
  return $MeasureUnitCopyWith<$Res>(_self.packUnit, (value) {
    return _then(_self.copyWith(packUnit: value));
  });
}
}

// dart format on
