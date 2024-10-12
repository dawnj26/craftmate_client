import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_fork.freezed.dart';
part 'project_fork.g.dart';

@freezed
class ProjectFork with _$ProjectFork {
  const factory ProjectFork({
    @Default(0) int id,
    @Default('') String title,
  }) = _ProjectFork;

  factory ProjectFork.fromJson(Map<String, Object?> json) =>
      _$ProjectForkFromJson(json);
}
