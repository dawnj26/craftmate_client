import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'view_listing_event.dart';
part 'view_listing_state.dart';
part 'view_listing_bloc.freezed.dart';

class ViewListingBloc extends Bloc<ViewListingEvent, ViewListingState> {
  ViewListingBloc({
    required ShopRepository shopRepository,
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepository;
  final UserRepository _userRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<ViewListingState> emit,
  ) async {
    emit(const Loading());
    try {
      final product = await _shopRepository.fetchListing(event.id);
      final seller =
          await _userRepository.getUserById(product.product.sellerId);
      emit(Loaded(query: product, seller: seller));
    } on ShopException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
