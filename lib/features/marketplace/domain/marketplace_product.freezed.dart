// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CanonicalNutrition {

 int get energyKcal; int get proteinMg; int get carbsMg; int get fatMg; int get fiberMg; int get sugarMg; int get sodiumMg; int get ironUg;
/// Create a copy of CanonicalNutrition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<CanonicalNutrition> get copyWith => _$CanonicalNutritionCopyWithImpl<CanonicalNutrition>(this as CanonicalNutrition, _$identity);

  /// Serializes this CanonicalNutrition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanonicalNutrition&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.proteinMg, proteinMg) || other.proteinMg == proteinMg)&&(identical(other.carbsMg, carbsMg) || other.carbsMg == carbsMg)&&(identical(other.fatMg, fatMg) || other.fatMg == fatMg)&&(identical(other.fiberMg, fiberMg) || other.fiberMg == fiberMg)&&(identical(other.sugarMg, sugarMg) || other.sugarMg == sugarMg)&&(identical(other.sodiumMg, sodiumMg) || other.sodiumMg == sodiumMg)&&(identical(other.ironUg, ironUg) || other.ironUg == ironUg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,energyKcal,proteinMg,carbsMg,fatMg,fiberMg,sugarMg,sodiumMg,ironUg);

@override
String toString() {
  return 'CanonicalNutrition(energyKcal: $energyKcal, proteinMg: $proteinMg, carbsMg: $carbsMg, fatMg: $fatMg, fiberMg: $fiberMg, sugarMg: $sugarMg, sodiumMg: $sodiumMg, ironUg: $ironUg)';
}


}

/// @nodoc
abstract mixin class $CanonicalNutritionCopyWith<$Res>  {
  factory $CanonicalNutritionCopyWith(CanonicalNutrition value, $Res Function(CanonicalNutrition) _then) = _$CanonicalNutritionCopyWithImpl;
@useResult
$Res call({
 int energyKcal, int proteinMg, int carbsMg, int fatMg, int fiberMg, int sugarMg, int sodiumMg, int ironUg
});




}
/// @nodoc
class _$CanonicalNutritionCopyWithImpl<$Res>
    implements $CanonicalNutritionCopyWith<$Res> {
  _$CanonicalNutritionCopyWithImpl(this._self, this._then);

  final CanonicalNutrition _self;
  final $Res Function(CanonicalNutrition) _then;

/// Create a copy of CanonicalNutrition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? energyKcal = null,Object? proteinMg = null,Object? carbsMg = null,Object? fatMg = null,Object? fiberMg = null,Object? sugarMg = null,Object? sodiumMg = null,Object? ironUg = null,}) {
  return _then(_self.copyWith(
energyKcal: null == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as int,proteinMg: null == proteinMg ? _self.proteinMg : proteinMg // ignore: cast_nullable_to_non_nullable
as int,carbsMg: null == carbsMg ? _self.carbsMg : carbsMg // ignore: cast_nullable_to_non_nullable
as int,fatMg: null == fatMg ? _self.fatMg : fatMg // ignore: cast_nullable_to_non_nullable
as int,fiberMg: null == fiberMg ? _self.fiberMg : fiberMg // ignore: cast_nullable_to_non_nullable
as int,sugarMg: null == sugarMg ? _self.sugarMg : sugarMg // ignore: cast_nullable_to_non_nullable
as int,sodiumMg: null == sodiumMg ? _self.sodiumMg : sodiumMg // ignore: cast_nullable_to_non_nullable
as int,ironUg: null == ironUg ? _self.ironUg : ironUg // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CanonicalNutrition].
extension CanonicalNutritionPatterns on CanonicalNutrition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CanonicalNutrition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CanonicalNutrition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CanonicalNutrition value)  $default,){
final _that = this;
switch (_that) {
case _CanonicalNutrition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CanonicalNutrition value)?  $default,){
final _that = this;
switch (_that) {
case _CanonicalNutrition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int energyKcal,  int proteinMg,  int carbsMg,  int fatMg,  int fiberMg,  int sugarMg,  int sodiumMg,  int ironUg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CanonicalNutrition() when $default != null:
return $default(_that.energyKcal,_that.proteinMg,_that.carbsMg,_that.fatMg,_that.fiberMg,_that.sugarMg,_that.sodiumMg,_that.ironUg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int energyKcal,  int proteinMg,  int carbsMg,  int fatMg,  int fiberMg,  int sugarMg,  int sodiumMg,  int ironUg)  $default,) {final _that = this;
switch (_that) {
case _CanonicalNutrition():
return $default(_that.energyKcal,_that.proteinMg,_that.carbsMg,_that.fatMg,_that.fiberMg,_that.sugarMg,_that.sodiumMg,_that.ironUg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int energyKcal,  int proteinMg,  int carbsMg,  int fatMg,  int fiberMg,  int sugarMg,  int sodiumMg,  int ironUg)?  $default,) {final _that = this;
switch (_that) {
case _CanonicalNutrition() when $default != null:
return $default(_that.energyKcal,_that.proteinMg,_that.carbsMg,_that.fatMg,_that.fiberMg,_that.sugarMg,_that.sodiumMg,_that.ironUg);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CanonicalNutrition extends CanonicalNutrition {
  const _CanonicalNutrition({this.energyKcal = 0, this.proteinMg = 0, this.carbsMg = 0, this.fatMg = 0, this.fiberMg = 0, this.sugarMg = 0, this.sodiumMg = 0, this.ironUg = 0}): super._();
  factory _CanonicalNutrition.fromJson(Map<String, dynamic> json) => _$CanonicalNutritionFromJson(json);

@override@JsonKey() final  int energyKcal;
@override@JsonKey() final  int proteinMg;
@override@JsonKey() final  int carbsMg;
@override@JsonKey() final  int fatMg;
@override@JsonKey() final  int fiberMg;
@override@JsonKey() final  int sugarMg;
@override@JsonKey() final  int sodiumMg;
@override@JsonKey() final  int ironUg;

/// Create a copy of CanonicalNutrition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CanonicalNutritionCopyWith<_CanonicalNutrition> get copyWith => __$CanonicalNutritionCopyWithImpl<_CanonicalNutrition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CanonicalNutritionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CanonicalNutrition&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.proteinMg, proteinMg) || other.proteinMg == proteinMg)&&(identical(other.carbsMg, carbsMg) || other.carbsMg == carbsMg)&&(identical(other.fatMg, fatMg) || other.fatMg == fatMg)&&(identical(other.fiberMg, fiberMg) || other.fiberMg == fiberMg)&&(identical(other.sugarMg, sugarMg) || other.sugarMg == sugarMg)&&(identical(other.sodiumMg, sodiumMg) || other.sodiumMg == sodiumMg)&&(identical(other.ironUg, ironUg) || other.ironUg == ironUg));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,energyKcal,proteinMg,carbsMg,fatMg,fiberMg,sugarMg,sodiumMg,ironUg);

@override
String toString() {
  return 'CanonicalNutrition(energyKcal: $energyKcal, proteinMg: $proteinMg, carbsMg: $carbsMg, fatMg: $fatMg, fiberMg: $fiberMg, sugarMg: $sugarMg, sodiumMg: $sodiumMg, ironUg: $ironUg)';
}


}

/// @nodoc
abstract mixin class _$CanonicalNutritionCopyWith<$Res> implements $CanonicalNutritionCopyWith<$Res> {
  factory _$CanonicalNutritionCopyWith(_CanonicalNutrition value, $Res Function(_CanonicalNutrition) _then) = __$CanonicalNutritionCopyWithImpl;
@override @useResult
$Res call({
 int energyKcal, int proteinMg, int carbsMg, int fatMg, int fiberMg, int sugarMg, int sodiumMg, int ironUg
});




}
/// @nodoc
class __$CanonicalNutritionCopyWithImpl<$Res>
    implements _$CanonicalNutritionCopyWith<$Res> {
  __$CanonicalNutritionCopyWithImpl(this._self, this._then);

  final _CanonicalNutrition _self;
  final $Res Function(_CanonicalNutrition) _then;

/// Create a copy of CanonicalNutrition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? energyKcal = null,Object? proteinMg = null,Object? carbsMg = null,Object? fatMg = null,Object? fiberMg = null,Object? sugarMg = null,Object? sodiumMg = null,Object? ironUg = null,}) {
  return _then(_CanonicalNutrition(
energyKcal: null == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as int,proteinMg: null == proteinMg ? _self.proteinMg : proteinMg // ignore: cast_nullable_to_non_nullable
as int,carbsMg: null == carbsMg ? _self.carbsMg : carbsMg // ignore: cast_nullable_to_non_nullable
as int,fatMg: null == fatMg ? _self.fatMg : fatMg // ignore: cast_nullable_to_non_nullable
as int,fiberMg: null == fiberMg ? _self.fiberMg : fiberMg // ignore: cast_nullable_to_non_nullable
as int,sugarMg: null == sugarMg ? _self.sugarMg : sugarMg // ignore: cast_nullable_to_non_nullable
as int,sodiumMg: null == sodiumMg ? _self.sodiumMg : sodiumMg // ignore: cast_nullable_to_non_nullable
as int,ironUg: null == ironUg ? _self.ironUg : ironUg // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProductAllergen {

 String get id; String get name;
/// Create a copy of ProductAllergen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductAllergenCopyWith<ProductAllergen> get copyWith => _$ProductAllergenCopyWithImpl<ProductAllergen>(this as ProductAllergen, _$identity);

  /// Serializes this ProductAllergen to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductAllergen&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ProductAllergen(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProductAllergenCopyWith<$Res>  {
  factory $ProductAllergenCopyWith(ProductAllergen value, $Res Function(ProductAllergen) _then) = _$ProductAllergenCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$ProductAllergenCopyWithImpl<$Res>
    implements $ProductAllergenCopyWith<$Res> {
  _$ProductAllergenCopyWithImpl(this._self, this._then);

  final ProductAllergen _self;
  final $Res Function(ProductAllergen) _then;

/// Create a copy of ProductAllergen
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductAllergen].
extension ProductAllergenPatterns on ProductAllergen {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductAllergen value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductAllergen() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductAllergen value)  $default,){
final _that = this;
switch (_that) {
case _ProductAllergen():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductAllergen value)?  $default,){
final _that = this;
switch (_that) {
case _ProductAllergen() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductAllergen() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _ProductAllergen():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ProductAllergen() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductAllergen implements ProductAllergen {
  const _ProductAllergen({required this.id, required this.name});
  factory _ProductAllergen.fromJson(Map<String, dynamic> json) => _$ProductAllergenFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of ProductAllergen
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductAllergenCopyWith<_ProductAllergen> get copyWith => __$ProductAllergenCopyWithImpl<_ProductAllergen>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductAllergenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductAllergen&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ProductAllergen(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProductAllergenCopyWith<$Res> implements $ProductAllergenCopyWith<$Res> {
  factory _$ProductAllergenCopyWith(_ProductAllergen value, $Res Function(_ProductAllergen) _then) = __$ProductAllergenCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$ProductAllergenCopyWithImpl<$Res>
    implements _$ProductAllergenCopyWith<$Res> {
  __$ProductAllergenCopyWithImpl(this._self, this._then);

  final _ProductAllergen _self;
  final $Res Function(_ProductAllergen) _then;

/// Create a copy of ProductAllergen
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ProductAllergen(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MarketplaceProduct {

 String get id; String get slug; String get categoryId; String get categoryName; String get subcategoryId; String get subcategoryName; String get measureFamilyId; MeasureFamily? get measureFamily; String get name; String get imageUrl; int get fromPriceKobo; int get fromRetailPriceKobo; int get discountPercent; String get description; String get origin; int? get recipeUnitOverrideMg; int? get recipeUnitOverrideMl; String? get expiresAt; bool get isVerified; int get bulkAllocationClaimedPercent; Map<String, String> get nutritionFacts; CanonicalNutrition get nutrition; List<ProductAllergen> get allergens; List<PerfectForItem> get perfectFor; List<String> get tags; List<ProductPack> get packs; int get sortOrder; bool get isActive; double get averageRating; int get reviewCount; RatingDistribution get ratingDistribution; String get createdAt; String get updatedAt;
/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceProductCopyWith<MarketplaceProduct> get copyWith => _$MarketplaceProductCopyWithImpl<MarketplaceProduct>(this as MarketplaceProduct, _$identity);

  /// Serializes this MarketplaceProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.measureFamilyId, measureFamilyId) || other.measureFamilyId == measureFamilyId)&&(identical(other.measureFamily, measureFamily) || other.measureFamily == measureFamily)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.fromPriceKobo, fromPriceKobo) || other.fromPriceKobo == fromPriceKobo)&&(identical(other.fromRetailPriceKobo, fromRetailPriceKobo) || other.fromRetailPriceKobo == fromRetailPriceKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.recipeUnitOverrideMg, recipeUnitOverrideMg) || other.recipeUnitOverrideMg == recipeUnitOverrideMg)&&(identical(other.recipeUnitOverrideMl, recipeUnitOverrideMl) || other.recipeUnitOverrideMl == recipeUnitOverrideMl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&const DeepCollectionEquality().equals(other.nutritionFacts, nutritionFacts)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&const DeepCollectionEquality().equals(other.allergens, allergens)&&const DeepCollectionEquality().equals(other.perfectFor, perfectFor)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.packs, packs)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.ratingDistribution, ratingDistribution) || other.ratingDistribution == ratingDistribution)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,categoryId,categoryName,subcategoryId,subcategoryName,measureFamilyId,measureFamily,name,imageUrl,fromPriceKobo,fromRetailPriceKobo,discountPercent,description,origin,recipeUnitOverrideMg,recipeUnitOverrideMl,expiresAt,isVerified,bulkAllocationClaimedPercent,const DeepCollectionEquality().hash(nutritionFacts),nutrition,const DeepCollectionEquality().hash(allergens),const DeepCollectionEquality().hash(perfectFor),const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(packs),sortOrder,isActive,averageRating,reviewCount,ratingDistribution,createdAt,updatedAt]);

@override
String toString() {
  return 'MarketplaceProduct(id: $id, slug: $slug, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, measureFamilyId: $measureFamilyId, measureFamily: $measureFamily, name: $name, imageUrl: $imageUrl, fromPriceKobo: $fromPriceKobo, fromRetailPriceKobo: $fromRetailPriceKobo, discountPercent: $discountPercent, description: $description, origin: $origin, recipeUnitOverrideMg: $recipeUnitOverrideMg, recipeUnitOverrideMl: $recipeUnitOverrideMl, expiresAt: $expiresAt, isVerified: $isVerified, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, nutritionFacts: $nutritionFacts, nutrition: $nutrition, allergens: $allergens, perfectFor: $perfectFor, tags: $tags, packs: $packs, sortOrder: $sortOrder, isActive: $isActive, averageRating: $averageRating, reviewCount: $reviewCount, ratingDistribution: $ratingDistribution, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MarketplaceProductCopyWith<$Res>  {
  factory $MarketplaceProductCopyWith(MarketplaceProduct value, $Res Function(MarketplaceProduct) _then) = _$MarketplaceProductCopyWithImpl;
@useResult
$Res call({
 String id, String slug, String categoryId, String categoryName, String subcategoryId, String subcategoryName, String measureFamilyId, MeasureFamily? measureFamily, String name, String imageUrl, int fromPriceKobo, int fromRetailPriceKobo, int discountPercent, String description, String origin, int? recipeUnitOverrideMg, int? recipeUnitOverrideMl, String? expiresAt, bool isVerified, int bulkAllocationClaimedPercent, Map<String, String> nutritionFacts, CanonicalNutrition nutrition, List<ProductAllergen> allergens, List<PerfectForItem> perfectFor, List<String> tags, List<ProductPack> packs, int sortOrder, bool isActive, double averageRating, int reviewCount, RatingDistribution ratingDistribution, String createdAt, String updatedAt
});


$MeasureFamilyCopyWith<$Res>? get measureFamily;$CanonicalNutritionCopyWith<$Res> get nutrition;$RatingDistributionCopyWith<$Res> get ratingDistribution;

}
/// @nodoc
class _$MarketplaceProductCopyWithImpl<$Res>
    implements $MarketplaceProductCopyWith<$Res> {
  _$MarketplaceProductCopyWithImpl(this._self, this._then);

  final MarketplaceProduct _self;
  final $Res Function(MarketplaceProduct) _then;

/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = null,Object? subcategoryName = null,Object? measureFamilyId = null,Object? measureFamily = freezed,Object? name = null,Object? imageUrl = null,Object? fromPriceKobo = null,Object? fromRetailPriceKobo = null,Object? discountPercent = null,Object? description = null,Object? origin = null,Object? recipeUnitOverrideMg = freezed,Object? recipeUnitOverrideMl = freezed,Object? expiresAt = freezed,Object? isVerified = null,Object? bulkAllocationClaimedPercent = null,Object? nutritionFacts = null,Object? nutrition = null,Object? allergens = null,Object? perfectFor = null,Object? tags = null,Object? packs = null,Object? sortOrder = null,Object? isActive = null,Object? averageRating = null,Object? reviewCount = null,Object? ratingDistribution = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryName: null == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String,measureFamilyId: null == measureFamilyId ? _self.measureFamilyId : measureFamilyId // ignore: cast_nullable_to_non_nullable
as String,measureFamily: freezed == measureFamily ? _self.measureFamily : measureFamily // ignore: cast_nullable_to_non_nullable
as MeasureFamily?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,fromPriceKobo: null == fromPriceKobo ? _self.fromPriceKobo : fromPriceKobo // ignore: cast_nullable_to_non_nullable
as int,fromRetailPriceKobo: null == fromRetailPriceKobo ? _self.fromRetailPriceKobo : fromRetailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,recipeUnitOverrideMg: freezed == recipeUnitOverrideMg ? _self.recipeUnitOverrideMg : recipeUnitOverrideMg // ignore: cast_nullable_to_non_nullable
as int?,recipeUnitOverrideMl: freezed == recipeUnitOverrideMl ? _self.recipeUnitOverrideMl : recipeUnitOverrideMl // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,bulkAllocationClaimedPercent: null == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int,nutritionFacts: null == nutritionFacts ? _self.nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,allergens: null == allergens ? _self.allergens : allergens // ignore: cast_nullable_to_non_nullable
as List<ProductAllergen>,perfectFor: null == perfectFor ? _self.perfectFor : perfectFor // ignore: cast_nullable_to_non_nullable
as List<PerfectForItem>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,packs: null == packs ? _self.packs : packs // ignore: cast_nullable_to_non_nullable
as List<ProductPack>,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,ratingDistribution: null == ratingDistribution ? _self.ratingDistribution : ratingDistribution // ignore: cast_nullable_to_non_nullable
as RatingDistribution,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureFamilyCopyWith<$Res>? get measureFamily {
    if (_self.measureFamily == null) {
    return null;
  }

  return $MeasureFamilyCopyWith<$Res>(_self.measureFamily!, (value) {
    return _then(_self.copyWith(measureFamily: value));
  });
}/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingDistributionCopyWith<$Res> get ratingDistribution {
  
  return $RatingDistributionCopyWith<$Res>(_self.ratingDistribution, (value) {
    return _then(_self.copyWith(ratingDistribution: value));
  });
}
}


/// Adds pattern-matching-related methods to [MarketplaceProduct].
extension MarketplaceProductPatterns on MarketplaceProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketplaceProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketplaceProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketplaceProduct value)  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketplaceProduct value)?  $default,){
final _that = this;
switch (_that) {
case _MarketplaceProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String slug,  String categoryId,  String categoryName,  String subcategoryId,  String subcategoryName,  String measureFamilyId,  MeasureFamily? measureFamily,  String name,  String imageUrl,  int fromPriceKobo,  int fromRetailPriceKobo,  int discountPercent,  String description,  String origin,  int? recipeUnitOverrideMg,  int? recipeUnitOverrideMl,  String? expiresAt,  bool isVerified,  int bulkAllocationClaimedPercent,  Map<String, String> nutritionFacts,  CanonicalNutrition nutrition,  List<ProductAllergen> allergens,  List<PerfectForItem> perfectFor,  List<String> tags,  List<ProductPack> packs,  int sortOrder,  bool isActive,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceProduct() when $default != null:
return $default(_that.id,_that.slug,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.measureFamilyId,_that.measureFamily,_that.name,_that.imageUrl,_that.fromPriceKobo,_that.fromRetailPriceKobo,_that.discountPercent,_that.description,_that.origin,_that.recipeUnitOverrideMg,_that.recipeUnitOverrideMl,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.nutrition,_that.allergens,_that.perfectFor,_that.tags,_that.packs,_that.sortOrder,_that.isActive,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String slug,  String categoryId,  String categoryName,  String subcategoryId,  String subcategoryName,  String measureFamilyId,  MeasureFamily? measureFamily,  String name,  String imageUrl,  int fromPriceKobo,  int fromRetailPriceKobo,  int discountPercent,  String description,  String origin,  int? recipeUnitOverrideMg,  int? recipeUnitOverrideMl,  String? expiresAt,  bool isVerified,  int bulkAllocationClaimedPercent,  Map<String, String> nutritionFacts,  CanonicalNutrition nutrition,  List<ProductAllergen> allergens,  List<PerfectForItem> perfectFor,  List<String> tags,  List<ProductPack> packs,  int sortOrder,  bool isActive,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProduct():
return $default(_that.id,_that.slug,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.measureFamilyId,_that.measureFamily,_that.name,_that.imageUrl,_that.fromPriceKobo,_that.fromRetailPriceKobo,_that.discountPercent,_that.description,_that.origin,_that.recipeUnitOverrideMg,_that.recipeUnitOverrideMl,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.nutrition,_that.allergens,_that.perfectFor,_that.tags,_that.packs,_that.sortOrder,_that.isActive,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String slug,  String categoryId,  String categoryName,  String subcategoryId,  String subcategoryName,  String measureFamilyId,  MeasureFamily? measureFamily,  String name,  String imageUrl,  int fromPriceKobo,  int fromRetailPriceKobo,  int discountPercent,  String description,  String origin,  int? recipeUnitOverrideMg,  int? recipeUnitOverrideMl,  String? expiresAt,  bool isVerified,  int bulkAllocationClaimedPercent,  Map<String, String> nutritionFacts,  CanonicalNutrition nutrition,  List<ProductAllergen> allergens,  List<PerfectForItem> perfectFor,  List<String> tags,  List<ProductPack> packs,  int sortOrder,  bool isActive,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProduct() when $default != null:
return $default(_that.id,_that.slug,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.measureFamilyId,_that.measureFamily,_that.name,_that.imageUrl,_that.fromPriceKobo,_that.fromRetailPriceKobo,_that.discountPercent,_that.description,_that.origin,_that.recipeUnitOverrideMg,_that.recipeUnitOverrideMl,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.nutrition,_that.allergens,_that.perfectFor,_that.tags,_that.packs,_that.sortOrder,_that.isActive,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketplaceProduct extends MarketplaceProduct {
  const _MarketplaceProduct({required this.id, required this.slug, required this.categoryId, required this.categoryName, required this.subcategoryId, required this.subcategoryName, required this.measureFamilyId, this.measureFamily, required this.name, required this.imageUrl, required this.fromPriceKobo, required this.fromRetailPriceKobo, required this.discountPercent, this.description = '', this.origin = '', this.recipeUnitOverrideMg, this.recipeUnitOverrideMl, this.expiresAt, this.isVerified = false, this.bulkAllocationClaimedPercent = 0, final  Map<String, String> nutritionFacts = const <String, String>{}, this.nutrition = const CanonicalNutrition(), final  List<ProductAllergen> allergens = const <ProductAllergen>[], final  List<PerfectForItem> perfectFor = const <PerfectForItem>[], required final  List<String> tags, final  List<ProductPack> packs = const <ProductPack>[], required this.sortOrder, required this.isActive, this.averageRating = 0, this.reviewCount = 0, this.ratingDistribution = const RatingDistribution(), required this.createdAt, required this.updatedAt}): _nutritionFacts = nutritionFacts,_allergens = allergens,_perfectFor = perfectFor,_tags = tags,_packs = packs,super._();
  factory _MarketplaceProduct.fromJson(Map<String, dynamic> json) => _$MarketplaceProductFromJson(json);

@override final  String id;
@override final  String slug;
@override final  String categoryId;
@override final  String categoryName;
@override final  String subcategoryId;
@override final  String subcategoryName;
@override final  String measureFamilyId;
@override final  MeasureFamily? measureFamily;
@override final  String name;
@override final  String imageUrl;
@override final  int fromPriceKobo;
@override final  int fromRetailPriceKobo;
@override final  int discountPercent;
@override@JsonKey() final  String description;
@override@JsonKey() final  String origin;
@override final  int? recipeUnitOverrideMg;
@override final  int? recipeUnitOverrideMl;
@override final  String? expiresAt;
@override@JsonKey() final  bool isVerified;
@override@JsonKey() final  int bulkAllocationClaimedPercent;
 final  Map<String, String> _nutritionFacts;
@override@JsonKey() Map<String, String> get nutritionFacts {
  if (_nutritionFacts is EqualUnmodifiableMapView) return _nutritionFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_nutritionFacts);
}

@override@JsonKey() final  CanonicalNutrition nutrition;
 final  List<ProductAllergen> _allergens;
@override@JsonKey() List<ProductAllergen> get allergens {
  if (_allergens is EqualUnmodifiableListView) return _allergens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allergens);
}

 final  List<PerfectForItem> _perfectFor;
@override@JsonKey() List<PerfectForItem> get perfectFor {
  if (_perfectFor is EqualUnmodifiableListView) return _perfectFor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_perfectFor);
}

 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<ProductPack> _packs;
@override@JsonKey() List<ProductPack> get packs {
  if (_packs is EqualUnmodifiableListView) return _packs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packs);
}

@override final  int sortOrder;
@override final  bool isActive;
@override@JsonKey() final  double averageRating;
@override@JsonKey() final  int reviewCount;
@override@JsonKey() final  RatingDistribution ratingDistribution;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketplaceProductCopyWith<_MarketplaceProduct> get copyWith => __$MarketplaceProductCopyWithImpl<_MarketplaceProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketplaceProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.measureFamilyId, measureFamilyId) || other.measureFamilyId == measureFamilyId)&&(identical(other.measureFamily, measureFamily) || other.measureFamily == measureFamily)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.fromPriceKobo, fromPriceKobo) || other.fromPriceKobo == fromPriceKobo)&&(identical(other.fromRetailPriceKobo, fromRetailPriceKobo) || other.fromRetailPriceKobo == fromRetailPriceKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.recipeUnitOverrideMg, recipeUnitOverrideMg) || other.recipeUnitOverrideMg == recipeUnitOverrideMg)&&(identical(other.recipeUnitOverrideMl, recipeUnitOverrideMl) || other.recipeUnitOverrideMl == recipeUnitOverrideMl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&const DeepCollectionEquality().equals(other._nutritionFacts, _nutritionFacts)&&(identical(other.nutrition, nutrition) || other.nutrition == nutrition)&&const DeepCollectionEquality().equals(other._allergens, _allergens)&&const DeepCollectionEquality().equals(other._perfectFor, _perfectFor)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._packs, _packs)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.ratingDistribution, ratingDistribution) || other.ratingDistribution == ratingDistribution)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,categoryId,categoryName,subcategoryId,subcategoryName,measureFamilyId,measureFamily,name,imageUrl,fromPriceKobo,fromRetailPriceKobo,discountPercent,description,origin,recipeUnitOverrideMg,recipeUnitOverrideMl,expiresAt,isVerified,bulkAllocationClaimedPercent,const DeepCollectionEquality().hash(_nutritionFacts),nutrition,const DeepCollectionEquality().hash(_allergens),const DeepCollectionEquality().hash(_perfectFor),const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_packs),sortOrder,isActive,averageRating,reviewCount,ratingDistribution,createdAt,updatedAt]);

@override
String toString() {
  return 'MarketplaceProduct(id: $id, slug: $slug, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, measureFamilyId: $measureFamilyId, measureFamily: $measureFamily, name: $name, imageUrl: $imageUrl, fromPriceKobo: $fromPriceKobo, fromRetailPriceKobo: $fromRetailPriceKobo, discountPercent: $discountPercent, description: $description, origin: $origin, recipeUnitOverrideMg: $recipeUnitOverrideMg, recipeUnitOverrideMl: $recipeUnitOverrideMl, expiresAt: $expiresAt, isVerified: $isVerified, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, nutritionFacts: $nutritionFacts, nutrition: $nutrition, allergens: $allergens, perfectFor: $perfectFor, tags: $tags, packs: $packs, sortOrder: $sortOrder, isActive: $isActive, averageRating: $averageRating, reviewCount: $reviewCount, ratingDistribution: $ratingDistribution, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceProductCopyWith<$Res> implements $MarketplaceProductCopyWith<$Res> {
  factory _$MarketplaceProductCopyWith(_MarketplaceProduct value, $Res Function(_MarketplaceProduct) _then) = __$MarketplaceProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String slug, String categoryId, String categoryName, String subcategoryId, String subcategoryName, String measureFamilyId, MeasureFamily? measureFamily, String name, String imageUrl, int fromPriceKobo, int fromRetailPriceKobo, int discountPercent, String description, String origin, int? recipeUnitOverrideMg, int? recipeUnitOverrideMl, String? expiresAt, bool isVerified, int bulkAllocationClaimedPercent, Map<String, String> nutritionFacts, CanonicalNutrition nutrition, List<ProductAllergen> allergens, List<PerfectForItem> perfectFor, List<String> tags, List<ProductPack> packs, int sortOrder, bool isActive, double averageRating, int reviewCount, RatingDistribution ratingDistribution, String createdAt, String updatedAt
});


@override $MeasureFamilyCopyWith<$Res>? get measureFamily;@override $CanonicalNutritionCopyWith<$Res> get nutrition;@override $RatingDistributionCopyWith<$Res> get ratingDistribution;

}
/// @nodoc
class __$MarketplaceProductCopyWithImpl<$Res>
    implements _$MarketplaceProductCopyWith<$Res> {
  __$MarketplaceProductCopyWithImpl(this._self, this._then);

  final _MarketplaceProduct _self;
  final $Res Function(_MarketplaceProduct) _then;

/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = null,Object? subcategoryName = null,Object? measureFamilyId = null,Object? measureFamily = freezed,Object? name = null,Object? imageUrl = null,Object? fromPriceKobo = null,Object? fromRetailPriceKobo = null,Object? discountPercent = null,Object? description = null,Object? origin = null,Object? recipeUnitOverrideMg = freezed,Object? recipeUnitOverrideMl = freezed,Object? expiresAt = freezed,Object? isVerified = null,Object? bulkAllocationClaimedPercent = null,Object? nutritionFacts = null,Object? nutrition = null,Object? allergens = null,Object? perfectFor = null,Object? tags = null,Object? packs = null,Object? sortOrder = null,Object? isActive = null,Object? averageRating = null,Object? reviewCount = null,Object? ratingDistribution = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MarketplaceProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryName: null == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String,measureFamilyId: null == measureFamilyId ? _self.measureFamilyId : measureFamilyId // ignore: cast_nullable_to_non_nullable
as String,measureFamily: freezed == measureFamily ? _self.measureFamily : measureFamily // ignore: cast_nullable_to_non_nullable
as MeasureFamily?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,fromPriceKobo: null == fromPriceKobo ? _self.fromPriceKobo : fromPriceKobo // ignore: cast_nullable_to_non_nullable
as int,fromRetailPriceKobo: null == fromRetailPriceKobo ? _self.fromRetailPriceKobo : fromRetailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,recipeUnitOverrideMg: freezed == recipeUnitOverrideMg ? _self.recipeUnitOverrideMg : recipeUnitOverrideMg // ignore: cast_nullable_to_non_nullable
as int?,recipeUnitOverrideMl: freezed == recipeUnitOverrideMl ? _self.recipeUnitOverrideMl : recipeUnitOverrideMl // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,bulkAllocationClaimedPercent: null == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int,nutritionFacts: null == nutritionFacts ? _self._nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,nutrition: null == nutrition ? _self.nutrition : nutrition // ignore: cast_nullable_to_non_nullable
as CanonicalNutrition,allergens: null == allergens ? _self._allergens : allergens // ignore: cast_nullable_to_non_nullable
as List<ProductAllergen>,perfectFor: null == perfectFor ? _self._perfectFor : perfectFor // ignore: cast_nullable_to_non_nullable
as List<PerfectForItem>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,packs: null == packs ? _self._packs : packs // ignore: cast_nullable_to_non_nullable
as List<ProductPack>,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,ratingDistribution: null == ratingDistribution ? _self.ratingDistribution : ratingDistribution // ignore: cast_nullable_to_non_nullable
as RatingDistribution,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeasureFamilyCopyWith<$Res>? get measureFamily {
    if (_self.measureFamily == null) {
    return null;
  }

  return $MeasureFamilyCopyWith<$Res>(_self.measureFamily!, (value) {
    return _then(_self.copyWith(measureFamily: value));
  });
}/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CanonicalNutritionCopyWith<$Res> get nutrition {
  
  return $CanonicalNutritionCopyWith<$Res>(_self.nutrition, (value) {
    return _then(_self.copyWith(nutrition: value));
  });
}/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingDistributionCopyWith<$Res> get ratingDistribution {
  
  return $RatingDistributionCopyWith<$Res>(_self.ratingDistribution, (value) {
    return _then(_self.copyWith(ratingDistribution: value));
  });
}
}

// dart format on
