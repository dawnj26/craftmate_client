import 'package:freezed_annotation/freezed_annotation.dart';
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
    required User creator,
    required int id,
    required String title,
    required ProjectVisibility visibility,
    required bool isLiked,
    required int likeCount,
    required int commentCount,
    required int forkCount,
    required int viewCount,
    @JsonKey(fromJson: DateTime.parse) required DateTime createdAt,
    @JsonKey(fromJson: DateTime.parse) required DateTime updatedAt,
    @JsonKey(fromJson: _parseDateTime) DateTime? deletedAt,
    List<dynamic>? description,
    List<Tag>? tags,
    List<Step>? steps,
    String? imageUrl,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}

DateTime? _parseDateTime(String? dateString) {
  if (dateString == null) return null;
  return DateTime.parse(dateString);
}
