// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      userId: (json['userId'] as num?)?.toInt() ?? -1,
      listingId: json['listingId'] as String? ?? '',
      review: json['review'] as String? ?? '',
      rating: (json['rating'] as num?)?.toInt() ?? 5,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'listingId': instance.listingId,
      'review': instance.review,
      'rating': instance.rating,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
