import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'shop_profile_event.dart';
part 'shop_profile_state.dart';
part 'shop_profile_bloc.freezed.dart';

class ShopProfileBloc extends Bloc<ShopProfileEvent, ShopProfileState> {
  ShopProfileBloc({
    required ShopRepository shopRepository,
  })  : _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_PeriodChanged>(_onPeriodChanged);
  }

  final ShopRepository _shopRepository;

  Future<void> _onPeriodChanged(
    _PeriodChanged event,
    Emitter<ShopProfileState> emit,
  ) async {
    try {
      final shopOverview = await _shopRepository.getSellerStats(
        event.sellerId,
        period: event.period.toLowerCase(),
      );
      emit(Loaded(shopOverview: shopOverview, period: event.period));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ShopProfileState> emit,
  ) async {
    emit(const Loading());
    try {
      final shopOverview = await _shopRepository.getSellerStats(
        event.sellerId,
        period: state.period.toLowerCase(),
      );
      emit(Loaded(shopOverview: shopOverview));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
