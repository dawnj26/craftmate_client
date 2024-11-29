import 'package:bloc/bloc.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_category.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_price.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_title.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_repository/map_repository.dart';
import 'package:project_repository/project_repository.dart';
import 'package:shop_repository/shop_repository.dart';

part 'edit_listing_event.dart';
part 'edit_listing_state.dart';
part 'edit_listing_bloc.freezed.dart';

class EditListingBloc extends Bloc<EditListingEvent, EditListingState> {
  EditListingBloc({
    required ShopRepository shopRepository,
    required ProjectRepository projectRepository,
  })  : _shopRepository = shopRepository,
        _projectRepository = projectRepository,
        super(const EditListingState.initial()) {
    on<_Started>(_onStarted);
    on<_TitleChanged>(_onTitleChanged);
    on<_PriceChanged>(_onPriceChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_CategoryChanged>(_onCategoryChanged);
    on<_AddressChanged>(_onAddressChanged);
    on<_ImageAdded>(_onImageAdded);
    on<_ImageRemoved>(_onImageRemoved);
    on<_NetworkImageRemoved>(_onNetworkImageRemoved);
    on<_Updated>(_onUpdated);
  }

  final ShopRepository _shopRepository;
  final ProjectRepository _projectRepository;
  late final String _listingId;

  Future<void> _onStarted(
    _Started event,
    Emitter<EditListingState> emit,
  ) async {
    emit(const EditListingState.loading());
    try {
      _listingId = event.id;
      final listing = await _shopRepository.fetchListing(event.id);
      final categories = await _projectRepository.getProjectCategories();

      emit(
        EditListingState.loaded(
          title: ListingTitle.pure(value: listing.product.name),
          price: ListingPrice.pure(value: listing.product.price.toString()),
          description: listing.product.description,
          category: ListingCategory.pure(listing.product.category),
          networkImages: listing.product.imageUrls,
          place: listing.product.address,
          categories: categories,
        ),
      );
    } catch (e) {
      emit(EditListingState.error(message: e.toString()));
    }
  }

  void _onNetworkImageRemoved(
    _NetworkImageRemoved event,
    Emitter<EditListingState> emit,
  ) {
    final networkImages = [...state.networkImages]..removeAt(event.index);

    emit(
      EditListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        category: state.category,
        images: [...state.images],
        networkImages: networkImages,
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onImageRemoved(
    _ImageRemoved event,
    Emitter<EditListingState> emit,
  ) {
    final images = [...state.images]..removeAt(event.index);

    emit(
      EditListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        category: state.category,
        images: images,
        networkImages: state.networkImages,
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  Future<void> _onImageAdded(
    _ImageAdded event,
    Emitter<EditListingState> emit,
  ) async {
    emit(
      EditListingState.loaded(
        title: state.title,
        price: state.price,
        networkImages: state.networkImages,
        description: state.description,
        category: state.category,
        images: [...state.images, ...event.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onAddressChanged(
    _AddressChanged event,
    Emitter<EditListingState> emit,
  ) {
    emit(
      EditListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        category: state.category,
        networkImages: state.networkImages,
        images: [...state.images],
        place: event.place,
        categories: [...state.categories],
      ),
    );
  }

  void _onCategoryChanged(
    _CategoryChanged event,
    Emitter<EditListingState> emit,
  ) {
    final category = ListingCategory.dirty(event.category);

    emit(
      EditListingState.loaded(
        title: state.title,
        price: state.price,
        description: state.description,
        networkImages: state.networkImages,
        category: category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<EditListingState> emit,
  ) {
    emit(
      EditListingState.loaded(
        title: state.title,
        price: state.price,
        description: event.description,
        networkImages: state.networkImages,
        category: state.category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onTitleChanged(
    _TitleChanged event,
    Emitter<EditListingState> emit,
  ) {
    final title = ListingTitle.dirty(value: event.title);

    emit(
      EditListingState.loaded(
        title: title,
        price: state.price,
        description: state.description,
        networkImages: state.networkImages,
        category: state.category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  void _onPriceChanged(
    _PriceChanged event,
    Emitter<EditListingState> emit,
  ) {
    final price = ListingPrice.dirty(value: event.price);

    emit(
      EditListingState.loaded(
        title: state.title,
        price: price,
        networkImages: state.networkImages,
        description: state.description,
        category: state.category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );
  }

  Future<void> _onUpdated(
    _Updated event,
    Emitter<EditListingState> emit,
  ) async {
    emit(
      EditListingState.updating(
        title: state.title,
        price: state.price,
        description: state.description,
        networkImages: state.networkImages,
        category: state.category,
        images: [...state.images],
        place: state.place?.copyWith(),
        categories: [...state.categories],
      ),
    );

    try {
      final product = Product(
        name: state.title.value,
        price: double.parse(state.price.value),
        description: state.description,
        category: state.category.value,
        imageUrls: state.images,
        address: state.place!,
        sellerId: event.userId,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      await _shopRepository.updateListing(
        _listingId,
        product,
        state.networkImages,
      );
      emit(const EditListingState.success());
    } catch (e) {
      emit(EditListingState.error(message: e.toString()));
    }
  }
}
