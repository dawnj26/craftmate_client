part of 'inactive_project_bloc.dart';

@freezed
class InactiveProjectState with _$InactiveProjectState {
  const factory InactiveProjectState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Initial;
  const factory InactiveProjectState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Loading;
  const factory InactiveProjectState.loaded({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    String? uuid,
  }) = Loaded;
  const factory InactiveProjectState.deleting({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleting;

  const factory InactiveProjectState.deleted({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleted;
  const factory InactiveProjectState.failed({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    required String errMessage,
  }) = Failed;
}
