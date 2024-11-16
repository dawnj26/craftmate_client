import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'category_search_event.dart';
part 'category_search_state.dart';
part 'category_search_bloc.freezed.dart';

const _duration = Duration(milliseconds: 300);

class CategorySearchBloc
    extends Bloc<CategorySearchEvent, CategorySearchState> {
  CategorySearchBloc({
    required List<ProjectCategory> categories,
  }) : super(
          _Initial(
            categories: categories,
            filteredCategories: categories,
          ),
        ) {
    on<_Started>(_onStarted, transformer: debounce(_duration));
  }

  void _onStarted(
    _Started event,
    Emitter<CategorySearchState> emit,
  ) {
    if (event.query.isEmpty) {
      return emit(
        CategorySearchState.loaded(
          categories: [...state.categories],
          filteredCategories: [...state.categories],
        ),
      );
    }

    final filteredCategories = state.categories
        .where(
          (category) =>
              category.name.toLowerCase().contains(event.query.toLowerCase()),
        )
        .toList();
    emit(
      CategorySearchState.loaded(
        categories: [...state.categories],
        filteredCategories: filteredCategories,
      ),
    );
  }
}
