import 'package:bloc/bloc.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
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
    required ChatRepository chatRepository,
  })  : _chatRepository = chatRepository,
        _userRepository = userRepository,
        _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_FavoriteToggled>(
      _onFavoriteToggled,
      transformer: throttleDroppable(const Duration(seconds: 1)),
    );
    on<_MessageChanged>(
      _onMessageChanged,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
    on<_MessageSent>(_onMessageSent);
  }

  final ShopRepository _shopRepository;
  final UserRepository _userRepository;
  final ChatRepository _chatRepository;
  late final User _curUser;

  Future<void> _onMessageSent(
    _MessageSent event,
    Emitter<ViewListingState> emit,
  ) async {
    if (state.message.isEmpty) return;

    emit(
      Sending(
        query: state.query.copyWith(),
        seller: state.seller.copyWith(),
        message: state.message,
      ),
    );

    try {
      final message = Message(
        senderId: _curUser.id,
        receiverId: state.seller.id,
        message: state.message,
        createdAt: DateTime.now(),
        senderReadAt: DateTime.now(),
      );
      await _chatRepository.sendMessage(message, listingId: state.query.id);
      emit(
        Sent(
          query: state.query.copyWith(),
          seller: state.seller.copyWith(),
          message: state.message,
        ),
      );
    } catch (e) {
      emit(
        Error(
          errMessage: 'Failed to send message',
          message: state.message,
          query: state.query.copyWith(),
          seller: state.seller.copyWith(),
        ),
      );
    }
  }

  void _onMessageChanged(
    _MessageChanged event,
    Emitter<ViewListingState> emit,
  ) {
    emit(
      Loaded(
        query: state.query.copyWith(),
        seller: state.seller.copyWith(),
        message: event.message,
      ),
    );
  }

  Future<void> _onFavoriteToggled(
    _FavoriteToggled event,
    Emitter<ViewListingState> emit,
  ) async {
    try {
      emit(
        Loaded(
          query: state.query.copyWith(isFavorite: !state.query.isFavorite),
          seller: state.seller.copyWith(),
          message: state.message,
        ),
      );
      final product = await _shopRepository.favoriteListing(
        state.query.id,
        _curUser.id,
      );
      emit(
        Loaded(
          query: product,
          seller: state.seller,
          message: state.message,
        ),
      );
    } on ShopException catch (e) {
      emit(
        Error(
          errMessage: e.message,
          message: state.message,
          query: state.query.copyWith(),
          seller: state.seller.copyWith(),
        ),
      );
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ViewListingState> emit,
  ) async {
    emit(const Loading());
    try {
      _curUser = await _userRepository.getUserByToken();

      final product = await _shopRepository.fetchListing(event.id, _curUser.id);
      final seller =
          await _userRepository.getUserById(product.product.sellerId);
      emit(
        Loaded(
          query: product,
          seller: seller,
          message: state.message,
        ),
      );
    } on ShopException catch (e) {
      emit(
        Error(
          errMessage: e.message,
          message: state.message,
          query: state.query.copyWith(),
          seller: state.seller.copyWith(),
        ),
      );
    }
  }
}
