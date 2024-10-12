import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/src/models/project/fork/project_fork.dart';
import 'package:project_repository/src/models/step/step.dart';
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
  factory Project({
    @Default(User()) User creator,
    @Default(0) int id,
    @Default('') String title,
    @Default(ProjectVisibility.public) ProjectVisibility visibility,
    @Default(false) bool isLiked,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int forkCount,
    @Default(0) int viewCount,
    @JsonKey(fromJson: DateTime.parse) required DateTime createdAt,
    @JsonKey(fromJson: DateTime.parse) required DateTime updatedAt,
    @JsonKey(fromJson: _parseDateTime) DateTime? deletedAt,
    List<dynamic>? description,
    List<Tag>? tags,
    List<Step>? steps,
    String? imageUrl,
    ProjectFork? fork,
  }) = _Project;

  factory Project.empty() => Project(
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}

DateTime? _parseDateTime(String? dateString) {
  if (dateString == null) return null;
  return DateTime.parse(dateString);
}
