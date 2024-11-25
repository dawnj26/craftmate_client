import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'user_listing_event.dart';
part 'user_listing_state.dart';
part 'user_listing_bloc.freezed.dart';

class UserListingBloc extends Bloc<UserListingEvent, UserListingState> {
  UserListingBloc({
    required ShopRepository shopRepository,
  })  : _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<UserListingState> emit,
  ) async {
    emit(const UserListingState.loading());

    try {
      final query = await _shopRepository.fetchUserListings(event.userId);

      emit(UserListingState.loaded(query: query));
    } catch (e) {
      emit(
        UserListingState.error(
          message: 'Failed to fetch user listings: $e',
        ),
      );
    }
  }
}
