import 'package:bloc/bloc.dart';
import 'package:config_repository/config_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'user_material_bloc.freezed.dart';
part 'user_material_event.dart';
part 'user_material_state.dart';

class UserMaterialBloc extends Bloc<UserMaterialEvent, UserMaterialState> {
  UserMaterialBloc({
    required MaterialRepository materialRepository,
  })  : _materialRepository = materialRepository,
        super(const Initial()) {
    on<_Started>(_onStarted);
    on<_Reload>(_onReload);
    on<_DeleteMaterial>(_onDeleteMaterial);
    on<_DeleteMaterials>(_onDeleteMaterials);
    on<_CategoryChanged>(_onCategoryChanged);
    on<_SortChanged>(_onSortChanged);
  }

  final MaterialRepository _materialRepository;

  Future<void> _onSortChanged(
    _SortChanged event,
    Emitter<UserMaterialState> emit,
  ) async {
    try {
      final materials = await _materialRepository.getMaterials(
        state.categoryId,
        event.sort,
        event.order,
      );
      emit(
        UserMaterialState.loaded(
          materials: materials,
          categories: [...state.categories],
          order: event.order,
          sort: event.sort,
          categoryId: state.categoryId,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        UserMaterialState.error(
          message: e.message,
          materials: [...state.materials],
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    }
  }

  Future<void> _onCategoryChanged(
    _CategoryChanged event,
    Emitter<UserMaterialState> emit,
  ) async {
    try {
      final materials = await _materialRepository.getMaterials(
        event.categoryId,
        state.sort,
        state.order,
      );
      emit(
        UserMaterialState.loaded(
          materials: materials,
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: event.categoryId,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        UserMaterialState.error(
          message: e.message,
          materials: [...state.materials],
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    }
  }

  Future<void> _onDeleteMaterials(
    _DeleteMaterials event,
    Emitter<UserMaterialState> emit,
  ) async {
    emit(
      UserMaterialState.deleting(
        materials: [...state.materials],
        categories: [...state.categories],
        order: state.order,
        sort: state.sort,
        categoryId: state.categoryId,
      ),
    );
    try {
      final materials =
          await _materialRepository.deleteMaterials(event.materialIds);
      emit(
        UserMaterialState.deleted(
          materials: materials,
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        UserMaterialState.error(
          message: e.message,
          materials: [...state.materials],
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    }
  }

  Future<void> _onDeleteMaterial(
    _DeleteMaterial event,
    Emitter<UserMaterialState> emit,
  ) async {
    emit(
      UserMaterialState.deleting(
        materials: [...state.materials],
        categories: [...state.categories],
        order: state.order,
        sort: state.sort,
        categoryId: state.categoryId,
      ),
    );
    try {
      await _materialRepository.deleteMaterial(event.materialId);
      emit(
        UserMaterialState.deleted(
          materials:
              state.materials.where((m) => m.id != event.materialId).toList(),
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        UserMaterialState.error(
          message: e.message,
          materials: [...state.materials],
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    }
  }

  Future<void> _onReload(
    _Reload event,
    Emitter<UserMaterialState> emit,
  ) async {
    emit(
      UserMaterialState.loading(
        materials: [...state.materials],
        categories: [...state.categories],
        order: state.order,
        sort: state.sort,
        categoryId: state.categoryId,
      ),
    );
    try {
      final materials = await _materialRepository.getMaterials();
      emit(
        UserMaterialState.loaded(
          materials: materials,
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        UserMaterialState.error(
          message: e.message,
          materials: [...state.materials],
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    }
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<UserMaterialState> emit,
  ) async {
    emit(const UserMaterialState.loading());
    try {
      final materials = await _materialRepository.getMaterials();
      final categories = await _materialRepository.getMaterialCategories();
      emit(
        UserMaterialState.loaded(
          materials: materials,
          categories: categories,
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        UserMaterialState.error(
          message: e.message,
          materials: [...state.materials],
          categories: [...state.categories],
          order: state.order,
          sort: state.sort,
          categoryId: state.categoryId,
        ),
      );
    }
  }
}
