import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_category.freezed.dart';
part 'project_category.g.dart';

@freezed
class ProjectCategory with _$ProjectCategory {
  const factory ProjectCategory({
    @Default(-1) int id,
    @Default('') String name,
  }) = _ProjectCategory;

  factory ProjectCategory.fromJson(Map<String, dynamic> json) =>
      _$ProjectCategoryFromJson(json);
}
