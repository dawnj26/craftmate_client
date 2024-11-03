part of 'category_search_bloc.dart';

@freezed
class CategorySearchEvent with _$CategorySearchEvent {
  const factory CategorySearchEvent.started(String query) = _Started;
}
