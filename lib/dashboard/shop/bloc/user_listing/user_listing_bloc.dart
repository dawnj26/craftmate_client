import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';
import 'package:shop_repository/shop_repository.dart';

part 'user_listing_event.dart';
part 'user_listing_state.dart';
part 'user_listing_bloc.freezed.dart';

class UserListingBloc extends Bloc<UserListingEvent, UserListingState> {
  UserListingBloc({
    required ShopRepository shopRepository,
    required ProjectRepository projectRepository,
  })  : _shopRepository = shopRepository,
        _projectRepository = projectRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_CategorySelected>(_onCategorySelected);
  }

  final ShopRepository _shopRepository;
  final ProjectRepository _projectRepository;

  Future<void> _onCategorySelected(
    _CategorySelected event,
    Emitter<UserListingState> emit,
  ) async {
    if (event.category.name == 'All') {
      return emit(
        Loaded(
          query: [...state.query],
          filteredQuery: [...state.query],
          categories: [...state.categories],
          selectedCategory: event.category,
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
    Emitter<UserListingState> emit,
  ) async {
    emit(const UserListingState.loading());

    try {
      final query = await _shopRepository.fetchUserListings(event.userId);
      final categories = await _projectRepository.getProjectCategories();

      emit(
        UserListingState.loaded(
          query: query,
          filteredQuery: [...query],
          categories: categories,
          selectedCategory: const ProjectCategory(name: 'All'),
        ),
      );
    } catch (e) {
      emit(
        UserListingState.error(
          message: 'Failed to fetch user listings: $e',
        ),
      );
    }
  }
}
