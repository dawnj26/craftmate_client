// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      creator: json['creator'] == null
          ? const User()
          : User.fromJson(json['creator'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      visibility:
          $enumDecodeNullable(_$ProjectVisibilityEnumMap, json['visibility']) ??
              ProjectVisibility.public,
      isLiked: json['isLiked'] as bool? ?? false,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      commentCount: (json['commentCount'] as num?)?.toInt() ?? 0,
      forkCount: (json['forkCount'] as num?)?.toInt() ?? 0,
      viewCount: (json['viewCount'] as num?)?.toInt() ?? 0,
      forkable: json['forkable'] as bool? ?? true,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: _parseDateTime(json['deletedAt'] as String?),
      startedAt: _parseDateTime(json['startedAt'] as String?),
      expectedCompletionAt:
          _parseDateTime(json['expectedCompletionAt'] as String?),
      completedAt: _parseDateTime(json['completedAt'] as String?),
      description: json['description'] as List<dynamic>?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      fork: json['fork'] == null
          ? null
          : ProjectFork.fromJson(json['fork'] as Map<String, dynamic>),
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => Material.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] == null
          ? null
          : ProjectCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'creator': instance.creator,
      'id': instance.id,
      'title': instance.title,
      'visibility': _$ProjectVisibilityEnumMap[instance.visibility]!,
      'isLiked': instance.isLiked,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'forkCount': instance.forkCount,
      'viewCount': instance.viewCount,
      'forkable': instance.forkable,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'expectedCompletionAt': instance.expectedCompletionAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'description': instance.description,
      'tags': instance.tags,
      'steps': instance.steps,
      'imageUrl': instance.imageUrl,
      'fork': instance.fork,
      'materials': instance.materials,
      'category': instance.category,
    };

const _$ProjectVisibilityEnumMap = {
  ProjectVisibility.public: 'public',
  ProjectVisibility.private: 'private',
  ProjectVisibility.followers: 'followers',
};
