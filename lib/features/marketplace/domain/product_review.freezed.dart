// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewAuthor {

 String get id; String get firstName; String get lastName;
/// Create a copy of ReviewAuthor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewAuthorCopyWith<ReviewAuthor> get copyWith => _$ReviewAuthorCopyWithImpl<ReviewAuthor>(this as ReviewAuthor, _$identity);

  /// Serializes this ReviewAuthor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewAuthor&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'ReviewAuthor(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $ReviewAuthorCopyWith<$Res>  {
  factory $ReviewAuthorCopyWith(ReviewAuthor value, $Res Function(ReviewAuthor) _then) = _$ReviewAuthorCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName
});




}
/// @nodoc
class _$ReviewAuthorCopyWithImpl<$Res>
    implements $ReviewAuthorCopyWith<$Res> {
  _$ReviewAuthorCopyWithImpl(this._self, this._then);

  final ReviewAuthor _self;
  final $Res Function(ReviewAuthor) _then;

/// Create a copy of ReviewAuthor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewAuthor].
extension ReviewAuthorPatterns on ReviewAuthor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewAuthor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewAuthor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewAuthor value)  $default,){
final _that = this;
switch (_that) {
case _ReviewAuthor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewAuthor value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewAuthor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewAuthor() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName)  $default,) {final _that = this;
switch (_that) {
case _ReviewAuthor():
return $default(_that.id,_that.firstName,_that.lastName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName)?  $default,) {final _that = this;
switch (_that) {
case _ReviewAuthor() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewAuthor implements ReviewAuthor {
  const _ReviewAuthor({required this.id, required this.firstName, required this.lastName});
  factory _ReviewAuthor.fromJson(Map<String, dynamic> json) => _$ReviewAuthorFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of ReviewAuthor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewAuthorCopyWith<_ReviewAuthor> get copyWith => __$ReviewAuthorCopyWithImpl<_ReviewAuthor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewAuthorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewAuthor&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'ReviewAuthor(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$ReviewAuthorCopyWith<$Res> implements $ReviewAuthorCopyWith<$Res> {
  factory _$ReviewAuthorCopyWith(_ReviewAuthor value, $Res Function(_ReviewAuthor) _then) = __$ReviewAuthorCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName
});




}
/// @nodoc
class __$ReviewAuthorCopyWithImpl<$Res>
    implements _$ReviewAuthorCopyWith<$Res> {
  __$ReviewAuthorCopyWithImpl(this._self, this._then);

  final _ReviewAuthor _self;
  final $Res Function(_ReviewAuthor) _then;

/// Create a copy of ReviewAuthor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_ReviewAuthor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductReview {

 String get id; String get productId; int get rating; String get body; int get helpfulCount; bool get markedHelpfulByMe; ReviewAuthor get author; String get createdAt; String get updatedAt;
/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewCopyWith<ProductReview> get copyWith => _$ProductReviewCopyWithImpl<ProductReview>(this as ProductReview, _$identity);

  /// Serializes this ProductReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReview&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.body, body) || other.body == body)&&(identical(other.helpfulCount, helpfulCount) || other.helpfulCount == helpfulCount)&&(identical(other.markedHelpfulByMe, markedHelpfulByMe) || other.markedHelpfulByMe == markedHelpfulByMe)&&(identical(other.author, author) || other.author == author)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,rating,body,helpfulCount,markedHelpfulByMe,author,createdAt,updatedAt);

@override
String toString() {
  return 'ProductReview(id: $id, productId: $productId, rating: $rating, body: $body, helpfulCount: $helpfulCount, markedHelpfulByMe: $markedHelpfulByMe, author: $author, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProductReviewCopyWith<$Res>  {
  factory $ProductReviewCopyWith(ProductReview value, $Res Function(ProductReview) _then) = _$ProductReviewCopyWithImpl;
@useResult
$Res call({
 String id, String productId, int rating, String body, int helpfulCount, bool markedHelpfulByMe, ReviewAuthor author, String createdAt, String updatedAt
});


$ReviewAuthorCopyWith<$Res> get author;

}
/// @nodoc
class _$ProductReviewCopyWithImpl<$Res>
    implements $ProductReviewCopyWith<$Res> {
  _$ProductReviewCopyWithImpl(this._self, this._then);

  final ProductReview _self;
  final $Res Function(ProductReview) _then;

/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? rating = null,Object? body = null,Object? helpfulCount = null,Object? markedHelpfulByMe = null,Object? author = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,helpfulCount: null == helpfulCount ? _self.helpfulCount : helpfulCount // ignore: cast_nullable_to_non_nullable
as int,markedHelpfulByMe: null == markedHelpfulByMe ? _self.markedHelpfulByMe : markedHelpfulByMe // ignore: cast_nullable_to_non_nullable
as bool,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ReviewAuthor,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewAuthorCopyWith<$Res> get author {
  
  return $ReviewAuthorCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductReview].
extension ProductReviewPatterns on ProductReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReview value)  $default,){
final _that = this;
switch (_that) {
case _ProductReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReview value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  int rating,  String body,  int helpfulCount,  bool markedHelpfulByMe,  ReviewAuthor author,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReview() when $default != null:
return $default(_that.id,_that.productId,_that.rating,_that.body,_that.helpfulCount,_that.markedHelpfulByMe,_that.author,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  int rating,  String body,  int helpfulCount,  bool markedHelpfulByMe,  ReviewAuthor author,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProductReview():
return $default(_that.id,_that.productId,_that.rating,_that.body,_that.helpfulCount,_that.markedHelpfulByMe,_that.author,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  int rating,  String body,  int helpfulCount,  bool markedHelpfulByMe,  ReviewAuthor author,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProductReview() when $default != null:
return $default(_that.id,_that.productId,_that.rating,_that.body,_that.helpfulCount,_that.markedHelpfulByMe,_that.author,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReview implements ProductReview {
  const _ProductReview({required this.id, required this.productId, required this.rating, required this.body, required this.helpfulCount, required this.markedHelpfulByMe, required this.author, required this.createdAt, required this.updatedAt});
  factory _ProductReview.fromJson(Map<String, dynamic> json) => _$ProductReviewFromJson(json);

@override final  String id;
@override final  String productId;
@override final  int rating;
@override final  String body;
@override final  int helpfulCount;
@override final  bool markedHelpfulByMe;
@override final  ReviewAuthor author;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewCopyWith<_ProductReview> get copyWith => __$ProductReviewCopyWithImpl<_ProductReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReview&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.body, body) || other.body == body)&&(identical(other.helpfulCount, helpfulCount) || other.helpfulCount == helpfulCount)&&(identical(other.markedHelpfulByMe, markedHelpfulByMe) || other.markedHelpfulByMe == markedHelpfulByMe)&&(identical(other.author, author) || other.author == author)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,rating,body,helpfulCount,markedHelpfulByMe,author,createdAt,updatedAt);

@override
String toString() {
  return 'ProductReview(id: $id, productId: $productId, rating: $rating, body: $body, helpfulCount: $helpfulCount, markedHelpfulByMe: $markedHelpfulByMe, author: $author, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewCopyWith<$Res> implements $ProductReviewCopyWith<$Res> {
  factory _$ProductReviewCopyWith(_ProductReview value, $Res Function(_ProductReview) _then) = __$ProductReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, int rating, String body, int helpfulCount, bool markedHelpfulByMe, ReviewAuthor author, String createdAt, String updatedAt
});


@override $ReviewAuthorCopyWith<$Res> get author;

}
/// @nodoc
class __$ProductReviewCopyWithImpl<$Res>
    implements _$ProductReviewCopyWith<$Res> {
  __$ProductReviewCopyWithImpl(this._self, this._then);

  final _ProductReview _self;
  final $Res Function(_ProductReview) _then;

/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? rating = null,Object? body = null,Object? helpfulCount = null,Object? markedHelpfulByMe = null,Object? author = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ProductReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,helpfulCount: null == helpfulCount ? _self.helpfulCount : helpfulCount // ignore: cast_nullable_to_non_nullable
as int,markedHelpfulByMe: null == markedHelpfulByMe ? _self.markedHelpfulByMe : markedHelpfulByMe // ignore: cast_nullable_to_non_nullable
as bool,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ReviewAuthor,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProductReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewAuthorCopyWith<$Res> get author {
  
  return $ReviewAuthorCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// @nodoc
mixin _$CreateReviewRequest {

 int get rating; String get body;
/// Create a copy of CreateReviewRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReviewRequestCopyWith<CreateReviewRequest> get copyWith => _$CreateReviewRequestCopyWithImpl<CreateReviewRequest>(this as CreateReviewRequest, _$identity);

  /// Serializes this CreateReviewRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReviewRequest&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,body);

@override
String toString() {
  return 'CreateReviewRequest(rating: $rating, body: $body)';
}


}

/// @nodoc
abstract mixin class $CreateReviewRequestCopyWith<$Res>  {
  factory $CreateReviewRequestCopyWith(CreateReviewRequest value, $Res Function(CreateReviewRequest) _then) = _$CreateReviewRequestCopyWithImpl;
@useResult
$Res call({
 int rating, String body
});




}
/// @nodoc
class _$CreateReviewRequestCopyWithImpl<$Res>
    implements $CreateReviewRequestCopyWith<$Res> {
  _$CreateReviewRequestCopyWithImpl(this._self, this._then);

  final CreateReviewRequest _self;
  final $Res Function(CreateReviewRequest) _then;

/// Create a copy of CreateReviewRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? body = null,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateReviewRequest].
extension CreateReviewRequestPatterns on CreateReviewRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReviewRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReviewRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReviewRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateReviewRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReviewRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReviewRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rating,  String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReviewRequest() when $default != null:
return $default(_that.rating,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rating,  String body)  $default,) {final _that = this;
switch (_that) {
case _CreateReviewRequest():
return $default(_that.rating,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rating,  String body)?  $default,) {final _that = this;
switch (_that) {
case _CreateReviewRequest() when $default != null:
return $default(_that.rating,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateReviewRequest implements CreateReviewRequest {
  const _CreateReviewRequest({required this.rating, required this.body});
  factory _CreateReviewRequest.fromJson(Map<String, dynamic> json) => _$CreateReviewRequestFromJson(json);

@override final  int rating;
@override final  String body;

/// Create a copy of CreateReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReviewRequestCopyWith<_CreateReviewRequest> get copyWith => __$CreateReviewRequestCopyWithImpl<_CreateReviewRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateReviewRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReviewRequest&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,body);

@override
String toString() {
  return 'CreateReviewRequest(rating: $rating, body: $body)';
}


}

/// @nodoc
abstract mixin class _$CreateReviewRequestCopyWith<$Res> implements $CreateReviewRequestCopyWith<$Res> {
  factory _$CreateReviewRequestCopyWith(_CreateReviewRequest value, $Res Function(_CreateReviewRequest) _then) = __$CreateReviewRequestCopyWithImpl;
@override @useResult
$Res call({
 int rating, String body
});




}
/// @nodoc
class __$CreateReviewRequestCopyWithImpl<$Res>
    implements _$CreateReviewRequestCopyWith<$Res> {
  __$CreateReviewRequestCopyWithImpl(this._self, this._then);

  final _CreateReviewRequest _self;
  final $Res Function(_CreateReviewRequest) _then;

/// Create a copy of CreateReviewRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? body = null,}) {
  return _then(_CreateReviewRequest(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductReviewsResponse {

 List<ProductReview> get items; int get total; double get averageRating; int get reviewCount; RatingDistribution get ratingDistribution; bool get hasReviewed;
/// Create a copy of ProductReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductReviewsResponseCopyWith<ProductReviewsResponse> get copyWith => _$ProductReviewsResponseCopyWithImpl<ProductReviewsResponse>(this as ProductReviewsResponse, _$identity);

  /// Serializes this ProductReviewsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductReviewsResponse&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.ratingDistribution, ratingDistribution) || other.ratingDistribution == ratingDistribution)&&(identical(other.hasReviewed, hasReviewed) || other.hasReviewed == hasReviewed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),total,averageRating,reviewCount,ratingDistribution,hasReviewed);

@override
String toString() {
  return 'ProductReviewsResponse(items: $items, total: $total, averageRating: $averageRating, reviewCount: $reviewCount, ratingDistribution: $ratingDistribution, hasReviewed: $hasReviewed)';
}


}

/// @nodoc
abstract mixin class $ProductReviewsResponseCopyWith<$Res>  {
  factory $ProductReviewsResponseCopyWith(ProductReviewsResponse value, $Res Function(ProductReviewsResponse) _then) = _$ProductReviewsResponseCopyWithImpl;
@useResult
$Res call({
 List<ProductReview> items, int total, double averageRating, int reviewCount, RatingDistribution ratingDistribution, bool hasReviewed
});


$RatingDistributionCopyWith<$Res> get ratingDistribution;

}
/// @nodoc
class _$ProductReviewsResponseCopyWithImpl<$Res>
    implements $ProductReviewsResponseCopyWith<$Res> {
  _$ProductReviewsResponseCopyWithImpl(this._self, this._then);

  final ProductReviewsResponse _self;
  final $Res Function(ProductReviewsResponse) _then;

/// Create a copy of ProductReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,Object? averageRating = null,Object? reviewCount = null,Object? ratingDistribution = null,Object? hasReviewed = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductReview>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,ratingDistribution: null == ratingDistribution ? _self.ratingDistribution : ratingDistribution // ignore: cast_nullable_to_non_nullable
as RatingDistribution,hasReviewed: null == hasReviewed ? _self.hasReviewed : hasReviewed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingDistributionCopyWith<$Res> get ratingDistribution {
  
  return $RatingDistributionCopyWith<$Res>(_self.ratingDistribution, (value) {
    return _then(_self.copyWith(ratingDistribution: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductReviewsResponse].
extension ProductReviewsResponsePatterns on ProductReviewsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductReviewsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductReviewsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductReviewsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductReviewsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductReviewsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductReview> items,  int total,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  bool hasReviewed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductReviewsResponse() when $default != null:
return $default(_that.items,_that.total,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.hasReviewed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductReview> items,  int total,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  bool hasReviewed)  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsResponse():
return $default(_that.items,_that.total,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.hasReviewed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductReview> items,  int total,  double averageRating,  int reviewCount,  RatingDistribution ratingDistribution,  bool hasReviewed)?  $default,) {final _that = this;
switch (_that) {
case _ProductReviewsResponse() when $default != null:
return $default(_that.items,_that.total,_that.averageRating,_that.reviewCount,_that.ratingDistribution,_that.hasReviewed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductReviewsResponse implements ProductReviewsResponse {
  const _ProductReviewsResponse({required final  List<ProductReview> items, required this.total, required this.averageRating, required this.reviewCount, required this.ratingDistribution, required this.hasReviewed}): _items = items;
  factory _ProductReviewsResponse.fromJson(Map<String, dynamic> json) => _$ProductReviewsResponseFromJson(json);

 final  List<ProductReview> _items;
@override List<ProductReview> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;
@override final  double averageRating;
@override final  int reviewCount;
@override final  RatingDistribution ratingDistribution;
@override final  bool hasReviewed;

/// Create a copy of ProductReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductReviewsResponseCopyWith<_ProductReviewsResponse> get copyWith => __$ProductReviewsResponseCopyWithImpl<_ProductReviewsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductReviewsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductReviewsResponse&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.ratingDistribution, ratingDistribution) || other.ratingDistribution == ratingDistribution)&&(identical(other.hasReviewed, hasReviewed) || other.hasReviewed == hasReviewed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,averageRating,reviewCount,ratingDistribution,hasReviewed);

@override
String toString() {
  return 'ProductReviewsResponse(items: $items, total: $total, averageRating: $averageRating, reviewCount: $reviewCount, ratingDistribution: $ratingDistribution, hasReviewed: $hasReviewed)';
}


}

/// @nodoc
abstract mixin class _$ProductReviewsResponseCopyWith<$Res> implements $ProductReviewsResponseCopyWith<$Res> {
  factory _$ProductReviewsResponseCopyWith(_ProductReviewsResponse value, $Res Function(_ProductReviewsResponse) _then) = __$ProductReviewsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ProductReview> items, int total, double averageRating, int reviewCount, RatingDistribution ratingDistribution, bool hasReviewed
});


@override $RatingDistributionCopyWith<$Res> get ratingDistribution;

}
/// @nodoc
class __$ProductReviewsResponseCopyWithImpl<$Res>
    implements _$ProductReviewsResponseCopyWith<$Res> {
  __$ProductReviewsResponseCopyWithImpl(this._self, this._then);

  final _ProductReviewsResponse _self;
  final $Res Function(_ProductReviewsResponse) _then;

/// Create a copy of ProductReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,Object? averageRating = null,Object? reviewCount = null,Object? ratingDistribution = null,Object? hasReviewed = null,}) {
  return _then(_ProductReviewsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductReview>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,ratingDistribution: null == ratingDistribution ? _self.ratingDistribution : ratingDistribution // ignore: cast_nullable_to_non_nullable
as RatingDistribution,hasReviewed: null == hasReviewed ? _self.hasReviewed : hasReviewed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductReviewsResponse
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
