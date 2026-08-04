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
mixin _$MarketplaceProduct {

 String get id; String get categoryId; String get categoryName; String get subcategoryId; String get subcategoryName; String get name; String get brand; String get packageLabel; String get imageUrl; int get priceKobo; int get retailPriceKobo; int get discountPercent; String get description; String get origin; String? get expiresAt; bool get isVerified; int get bulkAllocationClaimedPercent; Map<String, String> get nutritionFacts; List<PerfectForItem> get perfectFor; List<String> get tags; int get sortOrder; bool get isActive; double get averageRating; int get reviewCount; RatingDistribution get ratingDistribution; String get createdAt; String get updatedAt;
/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketplaceProductCopyWith<MarketplaceProduct> get copyWith => _$MarketplaceProductCopyWithImpl<MarketplaceProduct>(this as MarketplaceProduct, _$identity);

  /// Serializes this MarketplaceProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketplaceProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&const DeepCollectionEquality().equals(other.nutritionFacts, nutritionFacts)&&const DeepCollectionEquality().equals(other.perfectFor, perfectFor)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.ratingDistribution, ratingDistribution) || other.ratingDistribution == ratingDistribution)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,categoryId,categoryName,subcategoryId,subcategoryName,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,discountPercent,description,origin,expiresAt,isVerified,bulkAllocationClaimedPercent,const DeepCollectionEquality().hash(nutritionFacts),const DeepCollectionEquality().hash(perfectFor),const DeepCollectionEquality().hash(tags),sortOrder,isActive,averageRating,reviewCount,ratingDistribution,createdAt,updatedAt]);

@override
String toString() {
  return 'MarketplaceProduct(id: $id, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, discountPercent: $discountPercent, description: $description, origin: $origin, expiresAt: $expiresAt, isVerified: $isVerified, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, nutritionFacts: $nutritionFacts, perfectFor: $perfectFor, tags: $tags, sortOrder: $sortOrder, isActive: $isActive, averageRating: $averageRating, reviewCount: $reviewCount, ratingDistribution: $ratingDistribution, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MarketplaceProductCopyWith<$Res>  {
  factory $MarketplaceProductCopyWith(MarketplaceProduct value, $Res Function(MarketplaceProduct) _then) = _$MarketplaceProductCopyWithImpl;
@useResult
$Res call({
 String id, String categoryId, String categoryName, String subcategoryId, String subcategoryName, String name, String brand, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int discountPercent, String description, String origin, String? expiresAt, bool isVerified, int bulkAllocationClaimedPercent, Map<String, String> nutritionFacts, List<PerfectForItem> perfectFor, List<String> tags, int sortOrder, bool isActive, double averageRating, int reviewCount, RatingDistribution ratingDistribution, String createdAt, String updatedAt
});


$RatingDistributionCopyWith<$Res> get ratingDistribution;

}
/// @nodoc
class _$MarketplaceProductCopyWithImpl<$Res>
    implements $MarketplaceProductCopyWith<$Res> {
  _$MarketplaceProductCopyWithImpl(this._self, this._then);

  final MarketplaceProduct _self;
  final $Res Function(MarketplaceProduct) _then;

/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = null,Object? subcategoryName = null,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? discountPercent = null,Object? description = null,Object? origin = null,Object? expiresAt = freezed,Object? isVerified = null,Object? bulkAllocationClaimedPercent = null,Object? nutritionFacts = null,Object? perfectFor = null,Object? tags = null,Object? sortOrder = null,Object? isActive = null,Object? averageRating = null,Object? reviewCount = null,Object? ratingDistribution = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryName: null == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,bulkAllocationClaimedPercent: null == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int,nutritionFacts: null == nutritionFacts ? _self.nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,perfectFor: null == perfectFor ? _self.perfectFor : perfectFor // ignore: cast_nullable_to_non_nullable
as List<PerfectForItem>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String categoryId,  String categoryName,  String subcategoryId,  String subcategoryName,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int discountPercent,  String description,  String origin,  String? expiresAt,  bool isVerified,  int bulkAllocationClaimedPercent,  Map<String, String> nutritionFacts,  List<PerfectForItem> perfectFor,  List<String> tags,  int sortOrder,  bool isActive,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketplaceProduct() when $default != null:
return $default(_that.id,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.discountPercent,_that.description,_that.origin,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.perfectFor,_that.tags,_that.sortOrder,_that.isActive,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String categoryId,  String categoryName,  String subcategoryId,  String subcategoryName,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int discountPercent,  String description,  String origin,  String? expiresAt,  bool isVerified,  int bulkAllocationClaimedPercent,  Map<String, String> nutritionFacts,  List<PerfectForItem> perfectFor,  List<String> tags,  int sortOrder,  bool isActive,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProduct():
return $default(_that.id,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.discountPercent,_that.description,_that.origin,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.perfectFor,_that.tags,_that.sortOrder,_that.isActive,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String categoryId,  String categoryName,  String subcategoryId,  String subcategoryName,  String name,  String brand,  String packageLabel,  String imageUrl,  int priceKobo,  int retailPriceKobo,  int discountPercent,  String description,  String origin,  String? expiresAt,  bool isVerified,  int bulkAllocationClaimedPercent,  Map<String, String> nutritionFacts,  List<PerfectForItem> perfectFor,  List<String> tags,  int sortOrder,  bool isActive,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MarketplaceProduct() when $default != null:
return $default(_that.id,_that.categoryId,_that.categoryName,_that.subcategoryId,_that.subcategoryName,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.discountPercent,_that.description,_that.origin,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.perfectFor,_that.tags,_that.sortOrder,_that.isActive,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketplaceProduct implements MarketplaceProduct {
  const _MarketplaceProduct({required this.id, required this.categoryId, required this.categoryName, required this.subcategoryId, required this.subcategoryName, required this.name, required this.brand, required this.packageLabel, required this.imageUrl, required this.priceKobo, required this.retailPriceKobo, required this.discountPercent, this.description = '', this.origin = '', this.expiresAt, this.isVerified = false, this.bulkAllocationClaimedPercent = 0, final  Map<String, String> nutritionFacts = const <String, String>{}, final  List<PerfectForItem> perfectFor = const <PerfectForItem>[], required final  List<String> tags, required this.sortOrder, required this.isActive, this.averageRating = 0, this.reviewCount = 0, this.ratingDistribution = const RatingDistribution(), required this.createdAt, required this.updatedAt}): _nutritionFacts = nutritionFacts,_perfectFor = perfectFor,_tags = tags;
  factory _MarketplaceProduct.fromJson(Map<String, dynamic> json) => _$MarketplaceProductFromJson(json);

@override final  String id;
@override final  String categoryId;
@override final  String categoryName;
@override final  String subcategoryId;
@override final  String subcategoryName;
@override final  String name;
@override final  String brand;
@override final  String packageLabel;
@override final  String imageUrl;
@override final  int priceKobo;
@override final  int retailPriceKobo;
@override final  int discountPercent;
@override@JsonKey() final  String description;
@override@JsonKey() final  String origin;
@override final  String? expiresAt;
@override@JsonKey() final  bool isVerified;
@override@JsonKey() final  int bulkAllocationClaimedPercent;
 final  Map<String, String> _nutritionFacts;
@override@JsonKey() Map<String, String> get nutritionFacts {
  if (_nutritionFacts is EqualUnmodifiableMapView) return _nutritionFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_nutritionFacts);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketplaceProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryName, subcategoryName) || other.subcategoryName == subcategoryName)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&const DeepCollectionEquality().equals(other._nutritionFacts, _nutritionFacts)&&const DeepCollectionEquality().equals(other._perfectFor, _perfectFor)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.ratingDistribution, ratingDistribution) || other.ratingDistribution == ratingDistribution)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,categoryId,categoryName,subcategoryId,subcategoryName,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,discountPercent,description,origin,expiresAt,isVerified,bulkAllocationClaimedPercent,const DeepCollectionEquality().hash(_nutritionFacts),const DeepCollectionEquality().hash(_perfectFor),const DeepCollectionEquality().hash(_tags),sortOrder,isActive,averageRating,reviewCount,ratingDistribution,createdAt,updatedAt]);

@override
String toString() {
  return 'MarketplaceProduct(id: $id, categoryId: $categoryId, categoryName: $categoryName, subcategoryId: $subcategoryId, subcategoryName: $subcategoryName, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, discountPercent: $discountPercent, description: $description, origin: $origin, expiresAt: $expiresAt, isVerified: $isVerified, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, nutritionFacts: $nutritionFacts, perfectFor: $perfectFor, tags: $tags, sortOrder: $sortOrder, isActive: $isActive, averageRating: $averageRating, reviewCount: $reviewCount, ratingDistribution: $ratingDistribution, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MarketplaceProductCopyWith<$Res> implements $MarketplaceProductCopyWith<$Res> {
  factory _$MarketplaceProductCopyWith(_MarketplaceProduct value, $Res Function(_MarketplaceProduct) _then) = __$MarketplaceProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String categoryId, String categoryName, String subcategoryId, String subcategoryName, String name, String brand, String packageLabel, String imageUrl, int priceKobo, int retailPriceKobo, int discountPercent, String description, String origin, String? expiresAt, bool isVerified, int bulkAllocationClaimedPercent, Map<String, String> nutritionFacts, List<PerfectForItem> perfectFor, List<String> tags, int sortOrder, bool isActive, double averageRating, int reviewCount, RatingDistribution ratingDistribution, String createdAt, String updatedAt
});


@override $RatingDistributionCopyWith<$Res> get ratingDistribution;

}
/// @nodoc
class __$MarketplaceProductCopyWithImpl<$Res>
    implements _$MarketplaceProductCopyWith<$Res> {
  __$MarketplaceProductCopyWithImpl(this._self, this._then);

  final _MarketplaceProduct _self;
  final $Res Function(_MarketplaceProduct) _then;

/// Create a copy of MarketplaceProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? categoryName = null,Object? subcategoryId = null,Object? subcategoryName = null,Object? name = null,Object? brand = null,Object? packageLabel = null,Object? imageUrl = null,Object? priceKobo = null,Object? retailPriceKobo = null,Object? discountPercent = null,Object? description = null,Object? origin = null,Object? expiresAt = freezed,Object? isVerified = null,Object? bulkAllocationClaimedPercent = null,Object? nutritionFacts = null,Object? perfectFor = null,Object? tags = null,Object? sortOrder = null,Object? isActive = null,Object? averageRating = null,Object? reviewCount = null,Object? ratingDistribution = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_MarketplaceProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryName: null == subcategoryName ? _self.subcategoryName : subcategoryName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,packageLabel: null == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,priceKobo: null == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int,retailPriceKobo: null == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,bulkAllocationClaimedPercent: null == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int,nutritionFacts: null == nutritionFacts ? _self._nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>,perfectFor: null == perfectFor ? _self._perfectFor : perfectFor // ignore: cast_nullable_to_non_nullable
as List<PerfectForItem>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
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
$RatingDistributionCopyWith<$Res> get ratingDistribution {
  
  return $RatingDistributionCopyWith<$Res>(_self.ratingDistribution, (value) {
    return _then(_self.copyWith(ratingDistribution: value));
  });
}
}

// dart format on
