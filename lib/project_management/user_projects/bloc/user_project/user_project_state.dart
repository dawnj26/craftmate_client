part of 'user_project_bloc.dart';

@freezed
class UserProjectState with _$UserProjectState {
  const factory UserProjectState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Initial;
  const factory UserProjectState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Loading;

  const factory UserProjectState.loaded({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    String? uuid,
  }) = Loaded;

  const factory UserProjectState.deleting({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleting;

  const factory UserProjectState.deleted({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleted;

  const factory UserProjectState.error({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    required String message,
  }) = Error;
}
