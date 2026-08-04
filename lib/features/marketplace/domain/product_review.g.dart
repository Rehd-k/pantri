// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewAuthor _$ReviewAuthorFromJson(Map<String, dynamic> json) =>
    _ReviewAuthor(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$ReviewAuthorToJson(_ReviewAuthor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

_ProductReview _$ProductReviewFromJson(Map<String, dynamic> json) =>
    _ProductReview(
      id: json['id'] as String,
      productId: json['productId'] as String,
      rating: (json['rating'] as num).toInt(),
      body: json['body'] as String,
      helpfulCount: (json['helpfulCount'] as num).toInt(),
      markedHelpfulByMe: json['markedHelpfulByMe'] as bool,
      author: ReviewAuthor.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$ProductReviewToJson(_ProductReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'rating': instance.rating,
      'body': instance.body,
      'helpfulCount': instance.helpfulCount,
      'markedHelpfulByMe': instance.markedHelpfulByMe,
      'author': instance.author,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_CreateReviewRequest _$CreateReviewRequestFromJson(Map<String, dynamic> json) =>
    _CreateReviewRequest(
      rating: (json['rating'] as num).toInt(),
      body: json['body'] as String,
    );

Map<String, dynamic> _$CreateReviewRequestToJson(
  _CreateReviewRequest instance,
) => <String, dynamic>{'rating': instance.rating, 'body': instance.body};

_ProductReviewsResponse _$ProductReviewsResponseFromJson(
  Map<String, dynamic> json,
) => _ProductReviewsResponse(
  items: (json['items'] as List<dynamic>)
      .map((e) => ProductReview.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  averageRating: (json['averageRating'] as num).toDouble(),
  reviewCount: (json['reviewCount'] as num).toInt(),
  ratingDistribution: RatingDistribution.fromJson(
    json['ratingDistribution'] as Map<String, dynamic>,
  ),
  hasReviewed: json['hasReviewed'] as bool,
);

Map<String, dynamic> _$ProductReviewsResponseToJson(
  _ProductReviewsResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'averageRating': instance.averageRating,
  'reviewCount': instance.reviewCount,
  'ratingDistribution': instance.ratingDistribution,
  'hasReviewed': instance.hasReviewed,
};
