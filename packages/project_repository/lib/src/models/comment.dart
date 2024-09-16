import 'package:user_repository/user_repository.dart';

class Comment {
  final User user;
  final int id;
  final String content;
  final List<Comment> children;
  final bool isLiked;

  const Comment({
    required this.id,
    required this.user,
    required this.content,
    required this.children,
    required this.isLiked,
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
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String,
      children: children,
      isLiked: json['is_liked'] as bool,
    );
  }

  Comment copyWith({
    User? user,
    int? id,
    String? content,
    List<Comment>? children,
    bool? isLiked,
  }) {
    return Comment(
      user: user ?? this.user,
      id: id ?? this.id,
      content: content ?? this.content,
      children: children ?? this.children,
      isLiked: isLiked ?? this.isLiked,
    );
  }
}
