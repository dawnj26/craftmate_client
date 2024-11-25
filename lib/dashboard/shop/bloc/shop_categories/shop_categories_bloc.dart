import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_repository/project_repository.dart';

part 'shop_categories_event.dart';
part 'shop_categories_state.dart';
part 'shop_categories_bloc.freezed.dart';

class ShopCategoriesBloc
    extends Bloc<ShopCategoriesEvent, ShopCategoriesState> {
  ShopCategoriesBloc({
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
  }

  final ProjectRepository _projectRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<ShopCategoriesState> emit,
  ) async {
    emit(const Loading());
    try {
      final categories = await _projectRepository.getProjectCategories();
      emit(Loaded(categories: categories));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
