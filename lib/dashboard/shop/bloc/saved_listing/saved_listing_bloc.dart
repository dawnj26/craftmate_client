import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:shop_repository/shop_repository.dart';

part 'saved_listing_event.dart';
part 'saved_listing_state.dart';
part 'saved_listing_bloc.freezed.dart';

class SavedListingBloc extends Bloc<SavedListingEvent, SavedListingState> {
  SavedListingBloc({
    required ShopRepository shopRepository,
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_CategorySelected>(_onCategorySelected);
  }

  final ShopRepository _shopRepository;
  final ProjectRepository _projectRepository;

  Future<void> _onCategorySelected(
    _CategorySelected event,
    Emitter<SavedListingState> emit,
  ) async {
    if (event.category.name == 'All') {
      return emit(
        Loaded(
          query: [...state.query],
          filteredQuery: [...state.query],
          categories: [...state.categories],
          selectedCategory: state.selectedCategory,
        ),
      );
    }

    emit(
      Loaded(
        query: [...state.query],
        filteredQuery: state.query
            .where((q) => q.product.category == event.category.name)
            .toList(),
        categories: [...state.categories],
        selectedCategory: event.category,
      ),
    );
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<SavedListingState> emit,
  ) async {
    emit(const SavedListingState.loading());

    try {
      final query = await _shopRepository.fetchSavedListings(event.userId);
      final categories = await _projectRepository.getProjectCategories();

      emit(
        SavedListingState.loaded(
          query: query,
          filteredQuery: [...query],
          categories: categories,
          selectedCategory: const ProjectCategory(name: 'All'),
        ),
      );
    } catch (e) {
      emit(
        SavedListingState.error(
          message: 'Failed to fetch saved listings: $e',
        ),
      );
    }
  }
}
