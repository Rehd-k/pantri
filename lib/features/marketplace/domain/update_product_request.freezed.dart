// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProductRequest {

 String? get categoryId; String? get subcategoryId; String? get name; String? get brand; String? get packageLabel; String? get imageUrl; int? get priceKobo; int? get retailPriceKobo; String? get description; String? get origin; String? get expiresAt; bool? get isVerified; int? get bulkAllocationClaimedPercent; Map<String, String>? get nutritionFacts; List<PerfectForItem>? get perfectFor; List<String>? get tags; int? get sortOrder; bool? get isActive;
/// Create a copy of UpdateProductRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductRequestCopyWith<UpdateProductRequest> get copyWith => _$UpdateProductRequestCopyWithImpl<UpdateProductRequest>(this as UpdateProductRequest, _$identity);

  /// Serializes this UpdateProductRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProductRequest&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&const DeepCollectionEquality().equals(other.nutritionFacts, nutritionFacts)&&const DeepCollectionEquality().equals(other.perfectFor, perfectFor)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,subcategoryId,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,description,origin,expiresAt,isVerified,bulkAllocationClaimedPercent,const DeepCollectionEquality().hash(nutritionFacts),const DeepCollectionEquality().hash(perfectFor),const DeepCollectionEquality().hash(tags),sortOrder,isActive);

@override
String toString() {
  return 'UpdateProductRequest(categoryId: $categoryId, subcategoryId: $subcategoryId, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, description: $description, origin: $origin, expiresAt: $expiresAt, isVerified: $isVerified, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, nutritionFacts: $nutritionFacts, perfectFor: $perfectFor, tags: $tags, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $UpdateProductRequestCopyWith<$Res>  {
  factory $UpdateProductRequestCopyWith(UpdateProductRequest value, $Res Function(UpdateProductRequest) _then) = _$UpdateProductRequestCopyWithImpl;
@useResult
$Res call({
 String? categoryId, String? subcategoryId, String? name, String? brand, String? packageLabel, String? imageUrl, int? priceKobo, int? retailPriceKobo, String? description, String? origin, String? expiresAt, bool? isVerified, int? bulkAllocationClaimedPercent, Map<String, String>? nutritionFacts, List<PerfectForItem>? perfectFor, List<String>? tags, int? sortOrder, bool? isActive
});




}
/// @nodoc
class _$UpdateProductRequestCopyWithImpl<$Res>
    implements $UpdateProductRequestCopyWith<$Res> {
  _$UpdateProductRequestCopyWithImpl(this._self, this._then);

  final UpdateProductRequest _self;
  final $Res Function(UpdateProductRequest) _then;

/// Create a copy of UpdateProductRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = freezed,Object? subcategoryId = freezed,Object? name = freezed,Object? brand = freezed,Object? packageLabel = freezed,Object? imageUrl = freezed,Object? priceKobo = freezed,Object? retailPriceKobo = freezed,Object? description = freezed,Object? origin = freezed,Object? expiresAt = freezed,Object? isVerified = freezed,Object? bulkAllocationClaimedPercent = freezed,Object? nutritionFacts = freezed,Object? perfectFor = freezed,Object? tags = freezed,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subcategoryId: freezed == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,packageLabel: freezed == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,priceKobo: freezed == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int?,retailPriceKobo: freezed == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,bulkAllocationClaimedPercent: freezed == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int?,nutritionFacts: freezed == nutritionFacts ? _self.nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,perfectFor: freezed == perfectFor ? _self.perfectFor : perfectFor // ignore: cast_nullable_to_non_nullable
as List<PerfectForItem>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProductRequest].
extension UpdateProductRequestPatterns on UpdateProductRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProductRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProductRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProductRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProductRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProductRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProductRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? categoryId,  String? subcategoryId,  String? name,  String? brand,  String? packageLabel,  String? imageUrl,  int? priceKobo,  int? retailPriceKobo,  String? description,  String? origin,  String? expiresAt,  bool? isVerified,  int? bulkAllocationClaimedPercent,  Map<String, String>? nutritionFacts,  List<PerfectForItem>? perfectFor,  List<String>? tags,  int? sortOrder,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProductRequest() when $default != null:
return $default(_that.categoryId,_that.subcategoryId,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.description,_that.origin,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.perfectFor,_that.tags,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? categoryId,  String? subcategoryId,  String? name,  String? brand,  String? packageLabel,  String? imageUrl,  int? priceKobo,  int? retailPriceKobo,  String? description,  String? origin,  String? expiresAt,  bool? isVerified,  int? bulkAllocationClaimedPercent,  Map<String, String>? nutritionFacts,  List<PerfectForItem>? perfectFor,  List<String>? tags,  int? sortOrder,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _UpdateProductRequest():
return $default(_that.categoryId,_that.subcategoryId,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.description,_that.origin,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.perfectFor,_that.tags,_that.sortOrder,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? categoryId,  String? subcategoryId,  String? name,  String? brand,  String? packageLabel,  String? imageUrl,  int? priceKobo,  int? retailPriceKobo,  String? description,  String? origin,  String? expiresAt,  bool? isVerified,  int? bulkAllocationClaimedPercent,  Map<String, String>? nutritionFacts,  List<PerfectForItem>? perfectFor,  List<String>? tags,  int? sortOrder,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProductRequest() when $default != null:
return $default(_that.categoryId,_that.subcategoryId,_that.name,_that.brand,_that.packageLabel,_that.imageUrl,_that.priceKobo,_that.retailPriceKobo,_that.description,_that.origin,_that.expiresAt,_that.isVerified,_that.bulkAllocationClaimedPercent,_that.nutritionFacts,_that.perfectFor,_that.tags,_that.sortOrder,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProductRequest implements UpdateProductRequest {
  const _UpdateProductRequest({this.categoryId, this.subcategoryId, this.name, this.brand, this.packageLabel, this.imageUrl, this.priceKobo, this.retailPriceKobo, this.description, this.origin, this.expiresAt, this.isVerified, this.bulkAllocationClaimedPercent, final  Map<String, String>? nutritionFacts, final  List<PerfectForItem>? perfectFor, final  List<String>? tags, this.sortOrder, this.isActive}): _nutritionFacts = nutritionFacts,_perfectFor = perfectFor,_tags = tags;
  factory _UpdateProductRequest.fromJson(Map<String, dynamic> json) => _$UpdateProductRequestFromJson(json);

@override final  String? categoryId;
@override final  String? subcategoryId;
@override final  String? name;
@override final  String? brand;
@override final  String? packageLabel;
@override final  String? imageUrl;
@override final  int? priceKobo;
@override final  int? retailPriceKobo;
@override final  String? description;
@override final  String? origin;
@override final  String? expiresAt;
@override final  bool? isVerified;
@override final  int? bulkAllocationClaimedPercent;
 final  Map<String, String>? _nutritionFacts;
@override Map<String, String>? get nutritionFacts {
  final value = _nutritionFacts;
  if (value == null) return null;
  if (_nutritionFacts is EqualUnmodifiableMapView) return _nutritionFacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<PerfectForItem>? _perfectFor;
@override List<PerfectForItem>? get perfectFor {
  final value = _perfectFor;
  if (value == null) return null;
  if (_perfectFor is EqualUnmodifiableListView) return _perfectFor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? sortOrder;
@override final  bool? isActive;

/// Create a copy of UpdateProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProductRequestCopyWith<_UpdateProductRequest> get copyWith => __$UpdateProductRequestCopyWithImpl<_UpdateProductRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProductRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProductRequest&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.packageLabel, packageLabel) || other.packageLabel == packageLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.priceKobo, priceKobo) || other.priceKobo == priceKobo)&&(identical(other.retailPriceKobo, retailPriceKobo) || other.retailPriceKobo == retailPriceKobo)&&(identical(other.description, description) || other.description == description)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.bulkAllocationClaimedPercent, bulkAllocationClaimedPercent) || other.bulkAllocationClaimedPercent == bulkAllocationClaimedPercent)&&const DeepCollectionEquality().equals(other._nutritionFacts, _nutritionFacts)&&const DeepCollectionEquality().equals(other._perfectFor, _perfectFor)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,subcategoryId,name,brand,packageLabel,imageUrl,priceKobo,retailPriceKobo,description,origin,expiresAt,isVerified,bulkAllocationClaimedPercent,const DeepCollectionEquality().hash(_nutritionFacts),const DeepCollectionEquality().hash(_perfectFor),const DeepCollectionEquality().hash(_tags),sortOrder,isActive);

@override
String toString() {
  return 'UpdateProductRequest(categoryId: $categoryId, subcategoryId: $subcategoryId, name: $name, brand: $brand, packageLabel: $packageLabel, imageUrl: $imageUrl, priceKobo: $priceKobo, retailPriceKobo: $retailPriceKobo, description: $description, origin: $origin, expiresAt: $expiresAt, isVerified: $isVerified, bulkAllocationClaimedPercent: $bulkAllocationClaimedPercent, nutritionFacts: $nutritionFacts, perfectFor: $perfectFor, tags: $tags, sortOrder: $sortOrder, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$UpdateProductRequestCopyWith<$Res> implements $UpdateProductRequestCopyWith<$Res> {
  factory _$UpdateProductRequestCopyWith(_UpdateProductRequest value, $Res Function(_UpdateProductRequest) _then) = __$UpdateProductRequestCopyWithImpl;
@override @useResult
$Res call({
 String? categoryId, String? subcategoryId, String? name, String? brand, String? packageLabel, String? imageUrl, int? priceKobo, int? retailPriceKobo, String? description, String? origin, String? expiresAt, bool? isVerified, int? bulkAllocationClaimedPercent, Map<String, String>? nutritionFacts, List<PerfectForItem>? perfectFor, List<String>? tags, int? sortOrder, bool? isActive
});




}
/// @nodoc
class __$UpdateProductRequestCopyWithImpl<$Res>
    implements _$UpdateProductRequestCopyWith<$Res> {
  __$UpdateProductRequestCopyWithImpl(this._self, this._then);

  final _UpdateProductRequest _self;
  final $Res Function(_UpdateProductRequest) _then;

/// Create a copy of UpdateProductRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? subcategoryId = freezed,Object? name = freezed,Object? brand = freezed,Object? packageLabel = freezed,Object? imageUrl = freezed,Object? priceKobo = freezed,Object? retailPriceKobo = freezed,Object? description = freezed,Object? origin = freezed,Object? expiresAt = freezed,Object? isVerified = freezed,Object? bulkAllocationClaimedPercent = freezed,Object? nutritionFacts = freezed,Object? perfectFor = freezed,Object? tags = freezed,Object? sortOrder = freezed,Object? isActive = freezed,}) {
  return _then(_UpdateProductRequest(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,subcategoryId: freezed == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,packageLabel: freezed == packageLabel ? _self.packageLabel : packageLabel // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,priceKobo: freezed == priceKobo ? _self.priceKobo : priceKobo // ignore: cast_nullable_to_non_nullable
as int?,retailPriceKobo: freezed == retailPriceKobo ? _self.retailPriceKobo : retailPriceKobo // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,origin: freezed == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,bulkAllocationClaimedPercent: freezed == bulkAllocationClaimedPercent ? _self.bulkAllocationClaimedPercent : bulkAllocationClaimedPercent // ignore: cast_nullable_to_non_nullable
as int?,nutritionFacts: freezed == nutritionFacts ? _self._nutritionFacts : nutritionFacts // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,perfectFor: freezed == perfectFor ? _self._perfectFor : perfectFor // ignore: cast_nullable_to_non_nullable
as List<PerfectForItem>?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,sortOrder: freezed == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
