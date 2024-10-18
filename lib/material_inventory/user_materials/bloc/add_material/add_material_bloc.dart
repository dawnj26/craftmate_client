import 'package:bloc/bloc.dart';
import 'package:craftmate_client/material_inventory/models/material_category_dropdown.dart';
import 'package:craftmate_client/material_inventory/models/material_description.dart';
import 'package:craftmate_client/material_inventory/models/material_name.dart';
import 'package:formz/formz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'add_material_event.dart';
part 'add_material_state.dart';
part 'add_material_bloc.freezed.dart';

class AddMaterialBloc extends Bloc<AddMaterialEvent, AddMaterialState> {
  AddMaterialBloc({required MaterialRepository materialRepo})
      : _materialRepository = materialRepo,
        super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_NameChanged>(_onNameChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_QuantityChanged>(_onQuantityChanged);
    on<_CategorySelected>(_onCategorySelected);
    on<_ImagePathUploaded>(_onImagePathUploaded);
    on<_Submit>(_onSubmit);
  }

  final MaterialRepository _materialRepository;

  Future<void> _onSubmit(
    _Submit event,
    Emitter<AddMaterialState> emit,
  ) async {
    final valid = Formz.validate([
      state.name,
      state.description,
      state.category,
    ]);

    if (!valid) {
      emit(
        AddMaterialState.normal(
          name: MaterialName.dirty(state.name.value),
          description: MaterialDescription.dirty(state.description.value),
          quantity: state.quantity,
          categories: state.categories,
          category: MaterialCategoryDropdown.dirty(state.category.value),
          imagePath: state.imagePath,
        ),
      );
      return;
    }

    emit(
      AddMaterialState.uploading(
        name: state.name,
        description: state.description,
        quantity: state.quantity,
        categories: state.categories,
        category: state.category,
        imagePath: state.imagePath,
      ),
    );

    try {
      final selectedCategory = state.categories.firstWhere(
        (element) => element.id == state.category.value,
      );

      await _materialRepository.addMaterial(
        Material(
          name: state.name.value,
          description: state.description.value,
          quantity: state.quantity,
          materialCategory: selectedCategory,
          imageUrl: state.imagePath,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );
      emit(
        AddMaterialState.success(
          name: state.name,
          description: state.description,
          quantity: state.quantity,
          categories: state.categories,
          category: state.category,
          imagePath: state.imagePath,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        AddMaterialState.error(
          e.message,
          name: state.name,
          description: state.description,
          quantity: state.quantity,
          categories: state.categories,
          category: state.category,
          imagePath: state.imagePath,
        ),
      );
    }
  }

  Future<void> _onImagePathUploaded(
    _ImagePathUploaded event,
    Emitter<AddMaterialState> emit,
  ) async {
    emit(
      AddMaterialState.uploading(
        name: state.name,
        description: state.description,
        quantity: state.quantity,
        categories: state.categories,
        category: state.category,
        imagePath: state.imagePath,
      ),
    );

    try {
      final imagePath =
          await _materialRepository.uploadMaterialImage(event.imagePath);
      emit(
        AddMaterialState.uploaded(
          name: state.name,
          description: state.description,
          quantity: state.quantity,
          categories: state.categories,
          category: state.category,
          imagePath: imagePath,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        AddMaterialState.error(
          e.message,
          name: state.name,
          description: state.description,
          quantity: state.quantity,
          categories: state.categories,
          category: state.category,
          imagePath: state.imagePath,
        ),
      );
    }
  }

  void _onCategorySelected(
    _CategorySelected event,
    Emitter<AddMaterialState> emit,
  ) {
    emit(
      AddMaterialState.normal(
        name: state.name,
        description: state.description,
        quantity: state.quantity,
        categories: state.categories,
        category: MaterialCategoryDropdown.dirty(event.categoryId),
        imagePath: state.imagePath,
      ),
    );
  }

  void _onQuantityChanged(
    _QuantityChanged event,
    Emitter<AddMaterialState> emit,
  ) {
    emit(
      AddMaterialState.normal(
        name: state.name,
        description: state.description,
        quantity: event.quantity,
        categories: state.categories,
        category: state.category,
        imagePath: state.imagePath,
      ),
    );
  }

  void _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<AddMaterialState> emit,
  ) {
    emit(
      AddMaterialState.normal(
        name: state.name,
        description: MaterialDescription.dirty(event.descriptionText),
        quantity: state.quantity,
        categories: state.categories,
        category: state.category,
        imagePath: state.imagePath,
      ),
    );
  }

  void _onNameChanged(
    _NameChanged event,
    Emitter<AddMaterialState> emit,
  ) {
    emit(
      AddMaterialState.normal(
        name: MaterialName.dirty(event.nameText),
        description: state.description,
        quantity: state.quantity,
        categories: state.categories,
        category: state.category,
        imagePath: state.imagePath,
      ),
    );
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<AddMaterialState> emit,
  ) async {
    emit(const AddMaterialState.loading());
    try {
      final categories = await _materialRepository.getMaterialCategories();
      emit(AddMaterialState.normal(categories: categories));
    } on MaterialException catch (e) {
      emit(AddMaterialState.error(e.message));
    }
  }
}
