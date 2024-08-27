import 'package:project_repository/src/models/tag.dart';
import 'package:user_repository/user_repository.dart';

class Project {
  final User creator;
  final int id;
  final String title;
  final String? description;
  final List<Tag>? tags;
  final bool isPulic;

  const Project({
    required this.creator,
    required this.id,
    required this.title,
    required this.isPulic,
    this.description,
    this.tags,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      creator: User.fromJson(json['user'] as Map<String, dynamic>),
      id: json['id'] as int,
      title: json['title'] as String,
      isPulic: json['is_public'] == "1",
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
