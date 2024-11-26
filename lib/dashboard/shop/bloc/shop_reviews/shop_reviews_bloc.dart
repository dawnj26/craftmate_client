import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'shop_reviews_event.dart';
part 'shop_reviews_state.dart';
part 'shop_reviews_bloc.freezed.dart';

class ShopReviewsBloc extends Bloc<ShopReviewsEvent, ShopReviewsState> {
  ShopReviewsBloc({
    required ShopRepository shopRepository,
  })  : _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<ShopReviewsState> emit,
  ) async {
    emit(const Loading());
    try {
      final reviews = await _shopRepository.fetchReviews(event.userId);
      emit(Loaded(reviews: reviews));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
