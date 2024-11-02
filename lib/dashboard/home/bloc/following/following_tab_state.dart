part of 'following_tab_bloc.dart';

@freezed
class FollowingTabState with _$FollowingTabState {
  const factory FollowingTabState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Initial;
  const factory FollowingTabState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Loading;
  const factory FollowingTabState.loaded({
    required List<Project> projects,
    required Pagination<Project> page,
    required List<ProjectCategory> categories,
    required ProjectCategory selectedCategory,
    @Default('') String uuid,
  }) = Loaded;
  const factory FollowingTabState.error({
    required String message,
    @Default(Pagination()) Pagination<Project> page,
    @Default([]) List<Project> projects,
    @Default([]) List<ProjectCategory> categories,
    @Default(ProjectCategory(name: 'All')) ProjectCategory selectedCategory,
  }) = Error;
}
