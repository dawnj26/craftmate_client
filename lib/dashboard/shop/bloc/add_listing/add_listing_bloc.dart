import 'package:bloc/bloc.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_category.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_price.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_title.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_repository/map_repository.dart';
import 'package:project_repository/project_repository.dart';
import 'package:shop_repository/shop_repository.dart';
import 'package:user_repository/user_repository.dart';

part 'add_listing_event.dart';
part 'add_listing_state.dart';
part 'add_listing_bloc.freezed.dart';

class AddListingBloc extends Bloc<AddListingEvent, AddListingState> {
  AddListingBloc({
    required ShopRepository shopRepository,
    required ProjectRepository projectRepository,
  })  : _projectRepository = projectRepository,
        _shopRepository = shopRepository,
        super(const Initial()) {
    on<_TitleChanged>(_onTitleChanged);
    on<_PriceChanged>(_onPriceChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_CategoryChanged>(_onCategoryChanged);
    on<_AddressChanged>(_onAddressChanged);
    on<_Started>(_onStarted);
    on<_ImageAdded>(_onImageAdded);
    on<_ImageRemoved>(_onImageRemoved);
    on<_Published>(_onPublished);
  }

  final ShopRepository _shopRepository;
  final ProjectRepository _projectRepository;

  Future<void> _onPublished(
    _Published event,
    Emitter<AddListingState> emit,
  ) async {
    emit(
      AddListingState.publishing(
        title: state.title,
        price: state.price,
        description: state.description,
        category: state.category,
        images: state.images,
        categories: state.categories,
        place: state.place?.copyWith(),
      ),
    );

    try {
      final product = Product(
        sellerId: event.user.id,
        name: state.title.value,
        price: double.parse(state.price.value),
        description: state.description,
        category: state.category.value,
        imageUrls: state.images,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        address: state.place!,
      );

      await _shopRepository.publishListing(product);

      emit(const AddListingState.success());
    } on ShopException catch (e) {
      emit(
        AddListingState.error(
          title: state.title,
          price: state.price,
          description: state.description,
          category: state.category,
          images: state.images,
          message: e.message,
          place: state.place?.copyWith(),
        ),
      );
    }
  }

  void _onImageRemoved(
    _ImageRemoved event,
    Emitter<AddListingState> emit,
  ) {
    final images = [...state.images]..removeAt(event.index);

    emit(
      AddListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        category: state.category,
        images: images,
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  Future<void> _onImageAdded(
    _ImageAdded event,
    Emitter<AddListingState> emit,
  ) async {
    emit(
      AddListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        category: state.category,
        images: [...state.images, ...event.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<AddListingState> emit,
  ) async {
    emit(const AddListingState.loading());

    try {
      final categories = await _projectRepository.getProjectCategories();

      emit(
        AddListingState.loaded(
          categories: categories,
        ),
      );
    } on ProjectException catch (e) {
      emit(
        AddListingState.error(
          message: e.message,
        ),
      );
    }
  }

  void _onAddressChanged(
    _AddressChanged event,
    Emitter<AddListingState> emit,
  ) {
    emit(
      AddListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        category: state.category,
        images: [...state.images],
        place: event.place,
        categories: [...state.categories],
      ),
    );
  }

  void _onCategoryChanged(
    _CategoryChanged event,
    Emitter<AddListingState> emit,
  ) {
    final category = ListingCategory.dirty(event.category);

    emit(
      AddListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        category: category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<AddListingState> emit,
  ) {
    emit(
      AddListingState.loaded(
        title: state.title,
        price: state.price,
        description: event.description,
        category: state.category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onTitleChanged(_TitleChanged event, Emitter<AddListingState> emit) {
    final title = ListingTitle.dirty(value: event.title);

    emit(
      AddListingState.loaded(
        title: title,
        price: state.price,
        description: state.description,
        category: state.category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onPriceChanged(_PriceChanged event, Emitter<AddListingState> emit) {
    final price = ListingPrice.dirty(value: event.price);

    emit(
      AddListingState.loaded(
        title: state.title,
        price: price,
        description: state.description,
        category: state.category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }
}
