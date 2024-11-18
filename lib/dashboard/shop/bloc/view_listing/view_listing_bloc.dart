import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'view_listing_event.dart';
part 'view_listing_state.dart';
part 'view_listing_bloc.freezed.dart';

class ViewListingBloc extends Bloc<ViewListingEvent, ViewListingState> {
  ViewListingBloc({
    required ShopRepository shopRepository,
  })  : _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepository;

  Future<void> _onStarted(
      _Started event, Emitter<ViewListingState> emit) async {
    emit(const Loading());
    try {
      final product = await _shopRepository.fetchListing(event.id);
      emit(Loaded(product: product));
    } on ShopException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
