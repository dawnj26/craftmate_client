import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc(
    this._shopRepository,
  ) : super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepository;

  Future<void> _onStarted(_Started event, Emitter<ReviewState> emit) async {
    try {
      final isReviewed = await _shopRepository.isAlreadyReviewed(
        event.sellerId,
        event.curUserId,
      );

      if (isReviewed && event.sellerId != -1) {
        emit(const ReviewState.reviewed());
      } else {
        emit(const ReviewState.initial());
      }
    } catch (e) {
      emit(ReviewState.error(e.toString()));
    }
  }
}
