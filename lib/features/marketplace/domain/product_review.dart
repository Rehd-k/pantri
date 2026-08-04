// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating_distribution.dart';

part 'product_review.freezed.dart';
part 'product_review.g.dart';

@freezed
abstract class ReviewAuthor with _$ReviewAuthor {
  const factory ReviewAuthor({
    required String id,
    required String firstName,
    required String lastName,
  }) = _ReviewAuthor;

  factory ReviewAuthor.fromJson(Map<String, dynamic> json) =>
      _$ReviewAuthorFromJson(json);
}

@freezed
abstract class ProductReview with _$ProductReview {
  const factory ProductReview({
    required String id,
    required String productId,
    required int rating,
    required String body,
    required int helpfulCount,
    required bool markedHelpfulByMe,
    required ReviewAuthor author,
    required String createdAt,
    required String updatedAt,
  }) = _ProductReview;

  factory ProductReview.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewFromJson(json);
}

@freezed
abstract class CreateReviewRequest with _$CreateReviewRequest {
  const factory CreateReviewRequest({
    required int rating,
    required String body,
  }) = _CreateReviewRequest;

  factory CreateReviewRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReviewRequestFromJson(json);
}

@freezed
abstract class ProductReviewsResponse with _$ProductReviewsResponse {
  const factory ProductReviewsResponse({
    required List<ProductReview> items,
    required int total,
    required double averageRating,
    required int reviewCount,
    required RatingDistribution ratingDistribution,
    required bool hasReviewed,
  }) = _ProductReviewsResponse;

  factory ProductReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewsResponseFromJson(json);
}
