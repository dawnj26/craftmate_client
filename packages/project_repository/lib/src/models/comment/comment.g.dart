// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLiked: json['isLiked'] as bool,
      likeCount: (json['likeCount'] as num).toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'id': instance.id,
      'content': instance.content,
      'children': instance.children,
      'isLiked': instance.isLiked,
      'likeCount': instance.likeCount,
      'parentId': instance.parentId,
    };
