import 'package:bloc/bloc.dart';
import 'package:craftmate_client/helpers/stream_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_repository/search_repository.dart';

part 'shop_search_event.dart';
part 'shop_search_state.dart';
part 'shop_search_bloc.freezed.dart';

class ShopSearchBloc extends Bloc<ShopSearchEvent, ShopSearchState> {
  ShopSearchBloc(this._searchRepository) : super(const Initial()) {
    on<_Search>(
      _onSearch,
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  final SearchRepository _searchRepository;

  Future<void> _onSearch(_Search event, Emitter<ShopSearchState> emit) async {
    if (event.query.isEmpty) {
      emit(const ShopSearchState.initial());
      return;
    }

    emit(const ShopSearchState.loading());
    try {
      final results =
          await _searchRepository.searchShopSuggestions(event.query);
      emit(ShopSearchState.loaded(results: results, query: event.query));
    } on SearchException catch (e) {
      emit(ShopSearchState.error(error: e.message));
    }
  }
}
