import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/src/models/tag/tag.dart';
import 'package:user_repository/user_repository.dart';

part 'project.freezed.dart';
part 'project.g.dart';

enum ProjectVisibility {
  public('Public'),
  private('Private'),
  followers('Followers');

  const ProjectVisibility(this.label);
  final String label;
}

@freezed
class Project with _$Project {
  const factory Project({
    required User creator,
    required int id,
    required String title,
    required ProjectVisibility visibility,
    required bool isLiked,
    required int likeCount,
    required int commentCount,
    required int forkCount,
    List<dynamic>? description,
    List<Tag>? tags,
    List<dynamic>? steps,
    String? imageUrl,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}

// class Project extends Equatable {
//   final User creator;
//   final int id;
//   final String title;
//   final List<dynamic>? description;
//   final List<Tag>? tags;
//   final ProjectVisibility visibility;
//   final bool isLiked;
//   final int likeCount;
//   final int commentCount;
//   final int forkCount;
//   final List<dynamic>? steps;
//   final String? imageUrl;

//   @override
//   List<Object?> get props => [
//         creator,
//         id,
//         title,
//         description,
//         tags,
//         visibility,
//         isLiked,
//         likeCount,
//         commentCount,
//         forkCount,
//         steps,
//         imageUrl,
//       ];

//   const Project({
//     required this.creator,
//     required this.id,
//     required this.title,
//     required this.visibility,
//     required this.isLiked,
//     required this.likeCount,
//     required this.commentCount,
//     required this.forkCount,
//     this.description,
//     this.tags,
//     this.steps,
//     this.imageUrl,
//   });

//   Project copyWith({
//     String? title,
//     List<dynamic>? description,
//     List<Tag>? tags,
//     ProjectVisibility? visibility,
//     bool? isLiked,
//     int? likeCount,
//     int? commentCount,
//     int? forkCount,
//     List<dynamic>? steps,
//     String? imageUrl,
//   }) {
//     return Project(
//       creator: creator,
//       id: id,
//       title: title ?? this.title,
//       visibility: visibility ?? this.visibility,
//       isLiked: isLiked ?? this.isLiked,
//       description: description ?? this.description,
//       tags: tags ?? this.tags,
//       likeCount: likeCount ?? this.likeCount,
//       commentCount: commentCount ?? this.commentCount,
//       forkCount: forkCount ?? this.forkCount,
//       steps: steps ?? this.steps,
//       imageUrl: imageUrl ?? this.imageUrl,
//     );
//   }

//   factory Project.fromJson(Map<String, dynamic> json) {
//     return Project(
//       creator: User.fromJson(json['user'] as Map<String, dynamic>),
//       id: json['id'] as int,
//       title: json['title'] as String,
//       visibility: ProjectVisibility.values[json['visibility'] as int],
//       isLiked: json['is_liked'] as bool,
//       description: jsonDecode(json['description'] ?? 'null') as List<dynamic>?,
//       tags: (json['tags'] as List<dynamic>?)
//           ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       likeCount: json['like_count'] as int,
//       commentCount: json['comment_count'] as int,
//       forkCount: json['fork_count'] as int,
//       steps: jsonDecode(json['steps']['content'] ?? 'null') as List<dynamic>?,
//       imageUrl: json['image_path'] as String?,
//     );
//   }
// }
