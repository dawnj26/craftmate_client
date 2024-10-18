import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/src/models/material_category/material_category.dart';
import 'package:user_repository/user_repository.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezed
class Material with _$Material {
  const factory Material({
    @Default(0) int id,
    @Default(User()) User user,
    @Default('') String name,
    @Default('') String description,
    String? imageUrl,
    @Default(0) int quantity,
    @Default(MaterialCategory()) MaterialCategory materialCategory,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Material;

  factory Material.fromJson(Map<String, dynamic> json) =>
      _$MaterialFromJson(json);
}
