import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'write_review_event.dart';
part 'write_review_state.dart';
part 'write_review_bloc.freezed.dart';

class WriteReviewBloc extends Bloc<WriteReviewEvent, WriteReviewState> {
  WriteReviewBloc({
    required ShopRepository shopRepository,
    required UserRepository userRepository,
  })  : _shopRepository = shopRepository,
        _userRepository = userRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_RatingChanged>(_onRatingChanged);
    on<_ReviewChanged>(_onReviewChanged);
    on<_RatingSubmitted>(_onRatingSubmitted);
  }

  final ShopRepository _shopRepository;
  final UserRepository _userRepository;

  Future<void> _onRatingSubmitted(
    _RatingSubmitted event,
    Emitter<WriteReviewState> emit,
  ) async {
    if (state.review.isEmpty) {
      return emit(
        Invalid(
          seller: state.seller,
          query: state.query,
          rating: state.rating,
          review: state.review,
        ),
      );
    }

    emit(
      Submitting(
        seller: state.seller,
        query: state.query,
        rating: state.rating,
        review: state.review,
      ),
    );

    try {
      await _shopRepository.publishReview(
        state.seller.id,
        Review(
          userId: event.userId,
          listingId: state.query.id,
          review: state.review,
          rating: state.rating,
          createdAt: DateTime.now(),
        ),
      );

      emit(
        Success(
          seller: state.seller,
          query: state.query,
          rating: state.rating,
          review: state.review,
        ),
      );
    } catch (e) {
      emit(
        Error(
          message: e.toString(),
          seller: state.seller,
          query: state.query,
          rating: state.rating,
          review: state.review,
        ),
      );
    }
  }

  void _onReviewChanged(_ReviewChanged event, Emitter<WriteReviewState> emit) {
    if (event.review.isEmpty) {
      return emit(
        Invalid(
          seller: state.seller,
          query: state.query,
          rating: state.rating,
          review: event.review,
        ),
      );
    }

    emit(
      Loaded(
        seller: state.seller,
        query: state.query,
        rating: state.rating,
        review: event.review,
      ),
    );
  }

  void _onRatingChanged(
    _RatingChanged event,
    Emitter<WriteReviewState> emit,
  ) {
    emit(
      Loaded(seller: state.seller, query: state.query, rating: event.rating),
    );
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<WriteReviewState> emit,
  ) async {
    emit(const Loading());

    try {
      final seller = await _userRepository.getUserById(event.sellerId);
      final query = await _shopRepository.fetchListing(event.listingId);

      emit(Loaded(seller: seller, query: query, rating: 5));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
