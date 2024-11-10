part of 'completed_project_bloc.dart';

@freezed
class CompletedProjectState with _$CompletedProjectState {
  const factory CompletedProjectState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Initial;
  const factory CompletedProjectState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Loading;
  const factory CompletedProjectState.loaded({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    String? uuid,
  }) = Loaded;
  const factory CompletedProjectState.deleting({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleting;

  const factory CompletedProjectState.deleted({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleted;
  const factory CompletedProjectState.failed({
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
