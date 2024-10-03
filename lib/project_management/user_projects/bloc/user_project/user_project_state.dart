part of 'user_project_bloc.dart';

@freezed
class UserProjectState with _$UserProjectState {
  const factory UserProjectState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
  }) = _Initial;
  const factory UserProjectState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
  }) = _Loading;

  const factory UserProjectState.loaded({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    String? uuid,
  }) = _Loaded;

  const factory UserProjectState.deleting({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
  }) = _Deleting;

  const factory UserProjectState.deleted({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
  }) = _Deleted;

  const factory UserProjectState.error({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    required String message,
  }) = _Error;
}
