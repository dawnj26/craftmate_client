// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      visibility: $enumDecode(_$ProjectVisibilityEnumMap, json['visibility']),
      isLiked: json['isLiked'] as bool,
      likeCount: (json['likeCount'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      forkCount: (json['forkCount'] as num).toInt(),
      description: json['description'] as List<dynamic>?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      steps: json['steps'] as List<dynamic>?,
      imageUrl: json['imageUrl'] as String?,
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
      'description': instance.description,
      'tags': instance.tags,
      'steps': instance.steps,
      'imageUrl': instance.imageUrl,
    };

const _$ProjectVisibilityEnumMap = {
  ProjectVisibility.public: 'public',
  ProjectVisibility.private: 'private',
  ProjectVisibility.followers: 'followers',
};
