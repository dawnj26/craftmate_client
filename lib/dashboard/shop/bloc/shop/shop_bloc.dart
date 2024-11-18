import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_repository/shop_repository.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc({
    required ShopRepository shopRepository,
  })  : _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ShopRepository _shopRepository;

  Future<void> _onStarted(_Started event, Emitter<ShopState> emit) async {
    emit(const Loading());
    try {
      final products = await _shopRepository.fetchListings();
      emit(Loaded(products: products));
    } on ShopException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
