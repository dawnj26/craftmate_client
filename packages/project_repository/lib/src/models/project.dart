import 'package:project_repository/src/models/tag.dart';
import 'package:user_repository/user_repository.dart';

class Project {
  final User creator;
  final int id;
  final String title;
  final List<dynamic>? description;
  final List<Tag>? tags;
  final bool isPulic;
  final bool isLiked;
  final int likeCount;
  final int commentCount;
  final int forkCount;

  const Project({
    required this.creator,
    required this.id,
    required this.title,
    required this.isPulic,
    required this.isLiked,
    required this.likeCount,
    required this.commentCount,
    required this.forkCount,
    this.description,
    this.tags,
  });

  Project copyWith({
    String? title,
    List<dynamic>? description,
    List<Tag>? tags,
    bool? isPulic,
    bool? isLiked,
    int? likeCount,
    int? commentCount,
    int? forkCount,
  }) {
    return Project(
      creator: this.creator,
      id: this.id,
      title: title ?? this.title,
      isPulic: isPulic ?? this.isPulic,
      isLiked: isLiked ?? this.isLiked,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      likeCount: likeCount ?? this.likeCount,
      commentCount: commentCount ?? this.commentCount,
      forkCount: forkCount ?? this.forkCount,
    );
  }

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      creator: User.fromJson(json['user'] as Map<String, dynamic>),
      id: json['id'] as int,
      title: json['title'] as String,
      isPulic: json['is_public'] == "1",
      isLiked: json['is_liked'] as bool,
      description: json['description'] as List<dynamic>?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
      likeCount: json['like_count'] as int,
      commentCount: json['comment_count'] as int,
      forkCount: json['fork_count'] as int,
    );
  }
}
