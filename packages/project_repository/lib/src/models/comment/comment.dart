import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required User user,
    required int id,
    required String content,
    required List<Comment> children,
    required bool isLiked,
    required int likeCount,
    int? parentId,
  }) = _Comment;

  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}

// class Comment {
//   final User user;
//   final int id;
//   final int? parentId;
//   final String content;
//   final List<Comment> children;
//   final bool isLiked;
//   final int likeCount;

//   const Comment({
//     required this.id,
//     this.parentId,
//     required this.user,
//     required this.content,
//     required this.children,
//     required this.isLiked,
//     required this.likeCount,
//   });

//   factory Comment.fromJson(Map<String, dynamic> json) {
//     final containsChildren =
//         json.containsKey('children') && json['children'] != null;
//     final children = containsChildren
//         ? (json['children'] as List<dynamic>)
//             .map((e) => Comment.fromJson(e))
//             .toList()
//         : <Comment>[];

//     return Comment(
//       id: json['id'] as int,
//       parentId: json['parent_id'] as int?,
//       user: User.fromJson(json['user'] as Map<String, dynamic>),
//       content: json['content'] as String,
//       children: children,
//       isLiked: json['is_liked'] as bool,
//       likeCount: json['like_count'] as int,
//     );
//   }

//   Comment copyWith({
//     User? user,
//     int? id,
//     String? content,
//     List<Comment>? children,
//     bool? isLiked,
//     int? likeCount,
//   }) {
//     return Comment(
//       user: user ?? this.user,
//       id: id ?? this.id,
//       content: content ?? this.content,
//       children: children ?? this.children,
//       isLiked: isLiked ?? this.isLiked,
//       likeCount: likeCount ?? this.likeCount,
//     );
//   }
// }
