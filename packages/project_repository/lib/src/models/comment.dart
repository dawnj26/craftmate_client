import 'package:user_repository/user_repository.dart';

class Comment {
  final User user;
  final int id;
  final int? parentId;
  final String content;
  final List<Comment> children;
  final bool isLiked;
  final int likeCount;

  const Comment({
    required this.id,
    this.parentId,
    required this.user,
    required this.content,
    required this.children,
    required this.isLiked,
    required this.likeCount,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    final containsChildren =
        json.containsKey('children') && json['children'] != null;
    final children = containsChildren
        ? (json['children'] as List<dynamic>)
            .map((e) => Comment.fromJson(e))
            .toList()
        : <Comment>[];

    return Comment(
      id: json['id'] as int,
      parentId: json['parent_id'] as int?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String,
      children: children,
      isLiked: json['is_liked'] as bool,
      likeCount: json['like_count'] as int,
    );
  }

  Comment copyWith({
    User? user,
    int? id,
    String? content,
    List<Comment>? children,
    bool? isLiked,
    int? likeCount,
  }) {
    return Comment(
      user: user ?? this.user,
      id: id ?? this.id,
      content: content ?? this.content,
      children: children ?? this.children,
      isLiked: isLiked ?? this.isLiked,
      likeCount: likeCount ?? this.likeCount,
    );
  }
}
