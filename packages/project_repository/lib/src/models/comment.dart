import 'package:user_repository/user_repository.dart';

class Comment {
  final User user;
  final int id;
  final String content;
  final List<Comment> children;

  const Comment({
    required this.id,
    required this.user,
    required this.content,
    required this.children,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      content: json['content'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => Comment.fromJson(e))
          .toList(),
    );
  }
}
