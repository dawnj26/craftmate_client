part of 'profile_project_bloc.dart';

@freezed
class ProfileProjectState with _$ProfileProjectState {
  const factory ProfileProjectState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Initial;
  const factory ProfileProjectState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Loading;
  const factory ProfileProjectState.loaded({
    required List<Project> projects,
    required Pagination<Project> page,
    required List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    @Default('') String uuid,
  }) = Loaded;
  const factory ProfileProjectState.error({
    required String message,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Error;
}
