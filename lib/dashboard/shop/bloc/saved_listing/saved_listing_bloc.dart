import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'saved_listing_event.dart';
part 'saved_listing_state.dart';
part 'saved_listing_bloc.freezed.dart';

class SavedListingBloc extends Bloc<SavedListingEvent, SavedListingState> {
  SavedListingBloc({
    required ShopRepository shopRepository,
  })  : _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<SavedListingState> emit,
  ) async {
    emit(const SavedListingState.loading());

    try {
      final query = await _shopRepository.fetchSavedListings(event.userId);

      emit(SavedListingState.loaded(query: query));
    } catch (e) {
      emit(
        SavedListingState.error(
          message: 'Failed to fetch saved listings: $e',
        ),
      );
    }
  }
}
