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
      final period = _getPeriodLabel(event.period);

      emit(Loaded(shopOverview: shopOverview, period: period));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  String _getPeriodLabel(String period) {
    switch (period) {
      case 'Weekly':
        return 'Last 7 days';
      case 'Monthly':
        return 'Last 30 days';
      case 'Yearly':
        return 'Last year';
      case 'All time':
        return 'All time';
      default:
        return 'Last 7 days';
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

      final period = _getPeriodLabel(state.period);
      emit(Loaded(shopOverview: shopOverview, period: period));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
