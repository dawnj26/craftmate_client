import 'package:bloc/bloc.dart';
import 'package:craftmate_client/material_inventory/models/material_category_dropdown.dart';
import 'package:craftmate_client/material_inventory/models/material_description.dart';
import 'package:craftmate_client/material_inventory/models/material_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_repository/material_repository.dart';

part 'edit_material_event.dart';
part 'edit_material_state.dart';
part 'edit_material_bloc.freezed.dart';

class EditMaterialBloc extends Bloc<EditMaterialEvent, EditMaterialState> {
  EditMaterialBloc({
    required MaterialRepository materialRepo,
    required Material material,
  })  : _materialRepo = materialRepo,
        _material = material,
        super(
          Initial(
            name: MaterialName.dirty(material.name),
            description: MaterialDescription.dirty(material.description),
            category:
                MaterialCategoryDropdown.dirty(material.materialCategory.id),
            quantity: material.quantity,
            categories: [],
            imagePath: material.imageUrl,
          ),
        ) {
    on<_Started>(_onStarted);
    on<_NameChanged>(_onNameChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_QuantityChanged>(_onQuantityChanged);
    on<_ImagePathUploaded>(_onImagePathUploaded);
    on<_CategorySelected>(_onCategorySelected);
    on<_Submit>(_onSubmit);
    on<_Reset>(_onReset);
  }

  final MaterialRepository _materialRepo;
  final Material _material;

  Future<void> _onReset(
    _Reset event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.normal(
        name: MaterialName.dirty(_material.name),
        description: MaterialDescription.dirty(_material.description),
        category: MaterialCategoryDropdown.dirty(_material.materialCategory.id),
        quantity: _material.quantity,
        categories: state.categories,
        imagePath: _material.imageUrl,
      ),
    );
  }

  Future<void> _onSubmit(
    _Submit event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.uploading(
        name: state.name,
        description: state.description,
        category: state.category,
        quantity: state.quantity,
        categories: state.categories,
        imagePath: state.imagePath,
      ),
    );

    try {
      final material = Material(
        id: _material.id,
        name: state.name.value,
        description: state.description.value,
        quantity: state.quantity,
        materialCategory: MaterialCategory(id: state.category.value),
        imageUrl: state.imagePath,
        createdAt: _material.createdAt,
        updatedAt: DateTime.now(),
      );
      await _materialRepo.updateMaterial(material);
      emit(
        EditMaterialState.success(
          name: state.name,
          description: state.description,
          category: state.category,
          quantity: state.quantity,
          categories: state.categories,
          imagePath: state.imagePath,
        ),
      );
    } on MaterialException catch (e) {
      emit(
        EditMaterialState.error(
          e.message,
          name: state.name,
          description: state.description,
          category: state.category,
          quantity: state.quantity,
          categories: state.categories,
          imagePath: state.imagePath,
        ),
      );
    }
  }

  Future<void> _onCategorySelected(
    _CategorySelected event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.changed(
        name: state.name,
        description: state.description,
        category: MaterialCategoryDropdown.dirty(event.categoryId),
        quantity: state.quantity,
        categories: state.categories,
        imagePath: state.imagePath,
      ),
    );
  }

  Future<void> _onQuantityChanged(
    _QuantityChanged event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.changed(
        name: state.name,
        description: state.description,
        category: state.category,
        quantity: event.quantity,
        categories: state.categories,
        imagePath: state.imagePath,
      ),
    );
  }

  Future<void> _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.changed(
        name: state.name,
        description: MaterialDescription.dirty(event.descriptionText),
        category: state.category,
        quantity: state.quantity,
        categories: state.categories,
        imagePath: state.imagePath,
      ),
    );
  }

  Future<void> _onNameChanged(
    _NameChanged event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.changed(
        name: MaterialName.dirty(event.nameText),
        description: state.description,
        category: state.category,
        quantity: state.quantity,
        categories: state.categories,
        imagePath: state.imagePath,
      ),
    );
  }

  Future<void> _onImagePathUploaded(
    _ImagePathUploaded event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.uploading(
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
          await _materialRepo.uploadMaterialImage(event.imagePath);
      emit(
        EditMaterialState.uploaded(
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
        EditMaterialState.error(
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

  Future<void> _onStarted(
    _Started event,
    Emitter<EditMaterialState> emit,
  ) async {
    emit(
      EditMaterialState.loading(
        name: state.name,
        description: state.description,
        category: state.category,
        quantity: state.quantity,
        categories: [],
        imagePath: state.imagePath,
      ),
    );
    try {
      final categories = await _materialRepo.getMaterialCategories();
      emit(
        EditMaterialState.normal(
          name: state.name,
          description: state.description,
          category: state.category,
          quantity: state.quantity,
          categories: categories,
          imagePath: state.imagePath,
        ),
      );
    } on MaterialException catch (e) {
      emit(EditMaterialState.error(e.message));
    }
  }
}
