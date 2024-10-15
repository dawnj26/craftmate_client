import 'package:freezed_annotation/freezed_annotation.dart';

part 'material_category.freezed.dart';
part 'material_category.g.dart';

@freezed
class MaterialCategory with _$MaterialCategory {
  const factory MaterialCategory({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String description,
    @Default(0) int hexColor,
  }) = _MaterialCategory;

  factory MaterialCategory.fromJson(Map<String, dynamic> json) =>
      _$MaterialCategoryFromJson(json);
}
