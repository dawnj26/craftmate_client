part of 'latest_tab_bloc.dart';

@freezed
class LatestTabState with _$LatestTabState {
  const factory LatestTabState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Initial;
  const factory LatestTabState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Loading;
  const factory LatestTabState.loaded({
    required List<Project> projects,
    required Pagination<Project> page,
    required List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
    @Default('') String uuid,
  }) = Loaded;
  const factory LatestTabState.error({
    required String message,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Error;
}
