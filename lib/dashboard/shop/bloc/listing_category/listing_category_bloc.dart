import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'listing_category_event.dart';
part 'listing_category_state.dart';
part 'listing_category_bloc.freezed.dart';

class ListingCategoryBloc
    extends Bloc<ListingCategoryEvent, ListingCategoryState> {
  ListingCategoryBloc({
    required ShopRepository shopRepo,
  })  : _shopRepo = shopRepo,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepo;

  Future<void> _onStarted(
    _Started event,
    Emitter<ListingCategoryState> emit,
  ) async {
    emit(const Loading());
    try {
      final query = await _shopRepo.fetchListings(category: event.category);

      emit(Loaded(query: query));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
