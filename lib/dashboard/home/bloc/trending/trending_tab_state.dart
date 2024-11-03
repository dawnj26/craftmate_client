part of 'trending_tab_bloc.dart';

@freezed
class TrendingTabState with _$TrendingTabState {
  const factory TrendingTabState.initial({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default(MostFilter.views) MostFilter filter,
  }) = Initial;

  const factory TrendingTabState.loading({
    @Default([]) List<Project> projects,
    @Default(Pagination()) Pagination<Project> page,
    @Default(MostFilter.views) MostFilter filter,
  }) = Loading;

  const factory TrendingTabState.loaded({
    required List<Project> projects,
    required Pagination<Project> page,
    required String uuid,
    @Default(MostFilter.views) MostFilter filter,
  }) = Loaded;

  const factory TrendingTabState.error({
    required String message,
    required List<Project> projects,
    required Pagination<Project> page,
    @Default(MostFilter.views) MostFilter filter,
  }) = Error;
}
