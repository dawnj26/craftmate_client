import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_repository/map_repository.dart';
import 'package:project_repository/project_repository.dart';
import 'package:shop_repository/shop_repository.dart';

part 'shop_result_event.dart';
part 'shop_result_state.dart';
part 'shop_result_bloc.freezed.dart';

class ShopResultBloc extends Bloc<ShopResultEvent, ShopResultState> {
  ShopResultBloc(
    this._shopRepository,
    this._projectRepository,
    this._mapRepository,
  ) : super(const Initial()) {
    on<_Started>(_onStarted);
    on<_CategorySelected>(_onCategorySelected);
    on<_LocationSelected>(_onLocationSelected);
  }

  final ShopRepository _shopRepository;
  final ProjectRepository _projectRepository;
  final MapRepository _mapRepository;

  void _onLocationSelected(
    _LocationSelected event,
    Emitter<ShopResultState> emit,
  ) {
    emit(
      Loading(
        products: state.products,
        filteredProducts: state.filteredProducts,
        categories: state.categories,
        selectedCategory: state.selectedCategory,
        nearbyProducts: state.nearbyProducts,
        radius: state.radius,
        currentLocation: state.currentLocation,
      ),
    );
    try {
      final filteredNearbyProducts = _shopRepository.getNearbyListings(
        state.filteredProducts,
        event.location.lat,
        event.location.lon,
        event.radius,
      );
      emit(
        Loaded(
          products: state.products,
          filteredProducts: state.filteredProducts,
          nearbyProducts: filteredNearbyProducts,
          categories: state.categories,
          selectedCategory: state.selectedCategory,
          currentLocation: event.location,
          radius: event.radius,
        ),
      );
    } on ShopException catch (e) {
      emit(
        Error(
          message: e.message,
          products: state.products,
          filteredProducts: state.filteredProducts,
          categories: state.categories,
          selectedCategory: state.selectedCategory,
          radius: state.radius,
          currentLocation: state.currentLocation,
        ),
      );
    }
  }

  Future<void> _onCategorySelected(
    _CategorySelected event,
    Emitter<ShopResultState> emit,
  ) async {
    emit(
      Loading(
        products: state.products,
        categories: state.categories,
        filteredProducts: state.filteredProducts,
        selectedCategory: state.selectedCategory,
        nearbyProducts: state.nearbyProducts,
        currentLocation: state.currentLocation,
        radius: state.radius,
      ),
    );
    try {
      final products = event.category.name == 'All'
          ? [...state.products]
          : state.products
              .where((p) => p.product.category == event.category.name)
              .toList();
      final filteredNearby = _shopRepository.getNearbyListings(
        products,
        state.currentLocation.lat,
        state.currentLocation.lon,
        state.radius,
      );
      emit(
        Loaded(
          products: state.products,
          categories: state.categories,
          filteredProducts: products,
          nearbyProducts: filteredNearby,
          selectedCategory: event.category,
          radius: state.radius,
          currentLocation: state.currentLocation,
        ),
      );
    } on ShopException catch (e) {
      emit(
        Error(
          message: e.message,
          products: state.products,
          filteredProducts: state.filteredProducts,
          nearbyProducts: state.nearbyProducts,
          categories: state.categories,
          selectedCategory: state.selectedCategory,
          radius: state.radius,
          currentLocation: state.currentLocation,
        ),
      );
    }
  }

  Future<void> _onStarted(_Started event, Emitter<ShopResultState> emit) async {
    emit(const Loading());
    try {
      final products = await _shopRepository.searchListings(event.query);
      final categories = await _projectRepository.getProjectCategories();
      final location = await _mapRepository.getCurrentLocation();
      final nearby = _shopRepository.getNearbyListings(
        products,
        location.lat,
        location.lon,
        state.radius,
      );

      emit(
        Loaded(
          products: products,
          categories: categories,
          nearbyProducts: nearby,
          filteredProducts: products,
          currentLocation: location,
        ),
      );
    } on ShopException catch (e) {
      emit(Error(message: e.message));
    }
  }
}
