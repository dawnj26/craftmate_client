import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_repository/map_repository.dart';
import 'package:shop_repository/shop_repository.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc({
    required ShopRepository shopRepository,
    required MapRepository mapRepository,
  })  : _mapRepository = mapRepository,
        _shopRepository = shopRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_CurrentLocationChanged>(_onCurrentLocationChanged);
    on<_Refreshed>(_onRefreshed);
  }

  final ShopRepository _shopRepository;
  final MapRepository _mapRepository;

  Future<void> _onRefreshed(_Refreshed event, Emitter<ShopState> emit) async {
    try {
      final products = await _shopRepository.fetchListings();
      final currentLocation = await _mapRepository.getCurrentLocation();
      final nearbyProducts = _shopRepository.getNearbyListings(
        products,
        currentLocation.lat,
        currentLocation.lon,
        10,
      );

      emit(
        Loaded(
          products: products,
          nearbyProducts: nearbyProducts,
          currentLocation: currentLocation,
        ),
      );
    } catch (e) {
      emit(
        Error(
          message: e.toString(),
          products: [...state.products],
          nearbyProducts: [...state.nearbyProducts],
          currentLocation: state.currentLocation,
        ),
      );
    }
  }

  Future<void> _onCurrentLocationChanged(
    _CurrentLocationChanged event,
    Emitter<ShopState> emit,
  ) async {
    emit(
      Loading(
        products: [...state.products],
        nearbyProducts: [...state.nearbyProducts],
        currentLocation: event.currentLocation,
      ),
    );

    final nearbyProducts = _shopRepository.getNearbyListings(
      state.products,
      event.currentLocation.lat,
      event.currentLocation.lon,
      event.radiusKm,
    );

    await Future.delayed(const Duration(seconds: 1));

    emit(
      Loaded(
        products: [...state.products],
        nearbyProducts: nearbyProducts,
        currentLocation: event.currentLocation,
      ),
    );
  }

  Future<void> _onStarted(_Started event, Emitter<ShopState> emit) async {
    emit(const Initializing());
    try {
      final products = await _shopRepository.fetchListings();
      final currentLocation = await _mapRepository.getCurrentLocation();
      final nearbyProducts = _shopRepository.getNearbyListings(
        products,
        currentLocation.lat,
        currentLocation.lon,
        10,
      );
      emit(
        Initialized(
          products: products,
          currentLocation: currentLocation,
          nearbyProducts: nearbyProducts,
        ),
      );
    } on ShopException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
