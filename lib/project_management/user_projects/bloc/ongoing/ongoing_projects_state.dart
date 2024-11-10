part of 'ongoing_projects_bloc.dart';

@freezed
class OngoingProjectsState with _$OngoingProjectsState {
  const factory OngoingProjectsState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Initial;
  const factory OngoingProjectsState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Loading;
  const factory OngoingProjectsState.loaded({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    String? uuid,
  }) = Loaded;
  const factory OngoingProjectsState.deleting({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleting;

  const factory OngoingProjectsState.deleted({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> paginatedProjects,
    @Default(ProjectFilter.all) ProjectFilter filter,
    @Default(ProjectSort.lastModified) ProjectSort sort,
    @Default(SortOrder.desc) SortOrder order,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Deleted;
  const factory OngoingProjectsState.failed({
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
