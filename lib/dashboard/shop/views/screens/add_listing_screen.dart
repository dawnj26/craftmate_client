import 'dart:io';

import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/shop/bloc/add_listing/add_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_category.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_price.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_title.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/add_address_page.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_repository/project_repository.dart';

class AddListingScreen extends StatelessWidget {
  const AddListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddListingBloc, AddListingState>(
      listener: (context, state) {
        switch (state) {
          case Publishing():
            Modal.instance.showLoadingDialog(context);
          case Success():
            Navigator.of(context).pop();
            Navigator.of(context).pop();
            Alert.instance.showSnackbar(context, 'Listing published');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Listing'),
          actions: [
            BlocBuilder<AddListingBloc, AddListingState>(
              builder: _buildPublishButton,
            ),
          ],
        ),
        body: BlocBuilder<AddListingBloc, AddListingState>(
          buildWhen: (previous, current) =>
              previous is Initial || previous is Loading,
          builder: (context, state) {
            switch (state) {
              case Initial() || Loading():
                return const Center(child: CircularProgressIndicator());
            }

            return AddListingForm(
              titleController: TextEditingController(text: state.title.value),
              descriptionController:
                  TextEditingController(text: state.description),
              priceController: TextEditingController(text: state.price.value),
              categoryController:
                  TextEditingController(text: state.category.value),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPublishButton(BuildContext context, AddListingState state) {
    final isValid = state.title.isValid &&
        state.price.isValid &&
        state.category.isValid &&
        state.place != null &&
        (state.images.isNotEmpty || state.networkImages.isNotEmpty);

    return TextButton(
      onPressed: isValid
          ? () {
              context.read<AddListingBloc>().add(
                    AddListingEvent.published(
                      context.read<AuthBloc>().state.user,
                    ),
                  );
            }
          : null,
      child: const Text('Publish'),
    );
  }
}

class AddListingForm extends StatefulWidget {
  const AddListingForm({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
    required this.categoryController,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final TextEditingController categoryController;

  @override
  State<AddListingForm> createState() => _AddListingFormState();
}

class _AddListingFormState extends State<AddListingForm> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    widget.titleController.dispose();
    widget.descriptionController.dispose();
    widget.priceController.dispose();
    widget.categoryController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _addPhoto() async {
    final picker = ImagePicker();

    final image = await picker.pickMultiImage();

    if (image.isEmpty || !mounted) {
      return;
    }

    final images = image.map((e) => e.path).toList();

    context.read<AddListingBloc>().add(AddListingEvent.imageAdded(images));
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        ListingProfile(
          subtitle: Row(
            children: [
              Text(
                'Listing on Shop · ',
                style: theme.textTheme.bodySmall,
              ),
              const Icon(Icons.shopping_bag_rounded, size: 16),
            ],
          ),
        ),
        SizedBox(
          height: screenSize.height * 0.15,
          child: BlocBuilder<AddListingBloc, AddListingState>(
            builder: (context, state) {
              final images = state.images;

              return AddPhotos(
                scrollController: _scrollController,
                images: images,
                networkImages: state.networkImages,
                onFileImageRemoved: (index) {
                  context
                      .read<AddListingBloc>()
                      .add(AddListingEvent.imageRemoved(index));
                },
                onNetworkImageRemoved: (index) {
                  context
                      .read<AddListingBloc>()
                      .add(AddListingEvent.networkImageRemoved(index));
                },
                onPhotoAdded: _addPhoto,
              );
            },
          ),
        ),
        BlocBuilder<AddListingBloc, AddListingState>(
          buildWhen: (previous, current) =>
              previous.title.value != current.title.value,
          builder: (context, state) {
            final errorText =
                state.title.displayError == ListingTitleValidationError.empty
                    ? 'Title cannot be empty'
                    : null;

            return ListingField(
              controller: widget.titleController,
              labelText: 'Title',
              errorText: errorText,
              onChanged: (value) {
                context
                    .read<AddListingBloc>()
                    .add(AddListingEvent.titleChanged(value));
              },
            );
          },
        ),
        const SizedBox(height: 16),
        BlocBuilder<AddListingBloc, AddListingState>(
          buildWhen: (previous, current) =>
              previous.description != current.description,
          builder: (context, state) {
            return ListingField(
              controller: widget.descriptionController,
              labelText: 'Description',
              maxLines: 5,
              minLines: 3,
              helperText: 'Optional',
              onChanged: (value) {
                context
                    .read<AddListingBloc>()
                    .add(AddListingEvent.descriptionChanged(value));
              },
            );
          },
        ),
        const SizedBox(height: 16),
        BlocBuilder<AddListingBloc, AddListingState>(
          buildWhen: (previous, current) =>
              previous.price.value != current.price.value,
          builder: (context, state) {
            final errorText =
                state.price.displayError == ListingPriceValidationError.empty
                    ? 'Price cannot be empty'
                    : null;

            return ListingField(
              controller: widget.priceController,
              labelText: 'Price',
              number: true,
              errorText: errorText,
              onChanged: (value) {
                context
                    .read<AddListingBloc>()
                    .add(AddListingEvent.priceChanged(value));
              },
            );
          },
        ),
        const SizedBox(height: 16),
        BlocBuilder<AddListingBloc, AddListingState>(
          buildWhen: (previous, current) =>
              previous.category.value != current.category.value,
          builder: (context, state) {
            final error = state.category.displayError ==
                    ListingCategoryValidationError.empty
                ? 'Category cannot be empty'
                : null;
            final categories = state.categories;

            return ListingField(
              controller: widget.categoryController,
              hintText: 'Category',
              readOnly: true,
              suffixIcon: const Icon(Icons.arrow_drop_down_rounded),
              onTap: () {
                _showCategoryModal(
                  allCategories: categories,
                  selectedCategory: ProjectCategory(
                    name: widget.categoryController.text,
                  ),
                );
              },
              onChanged: (value) {
                context
                    .read<AddListingBloc>()
                    .add(AddListingEvent.categoryChanged(value));
              },
              errorText: error,
            );
          },
        ),
        const Divider(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location', style: theme.textTheme.labelLarge),
                  const SizedBox(height: 4),
                  BlocBuilder<AddListingBloc, AddListingState>(
                    buildWhen: (previous, current) =>
                        previous.place != current.place,
                    builder: (context, state) {
                      return Text(
                        state.place?.name ?? 'Add an address',
                        style: theme.textTheme.bodyLarge,
                      );
                    },
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.of(context).push(
                  AddAddressPage.route(
                    onAddressSelected: (place, radius) {
                      context
                          .read<AddListingBloc>()
                          .add(AddListingEvent.addressChanged(place));
                    },
                  ),
                );
              },
              child: const Text('Change'),
            ),
          ],
        ),
      ],
    );
  }

  void _showCategoryModal({
    required List<ProjectCategory> allCategories,
    required ProjectCategory selectedCategory,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) {
        return DraggableCategory(
          allCategories: allCategories,
          selectedCategory: selectedCategory,
          onSelected: (category) {
            context
                .read<AddListingBloc>()
                .add(AddListingEvent.categoryChanged(category.name));
            widget.categoryController.text = category.name;
          },
        );
      },
    );
  }
}

class AddPhotos extends StatelessWidget {
  const AddPhotos({
    super.key,
    required this.scrollController,
    required this.images,
    required this.networkImages,
    this.onFileImageRemoved,
    this.onPhotoAdded,
    this.onNetworkImageRemoved,
  });

  final ScrollController scrollController;
  final List<String> images;
  final List<String> networkImages;
  final void Function(int index)? onFileImageRemoved;
  final void Function(int index)? onNetworkImageRemoved;
  final void Function()? onPhotoAdded;

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty && networkImages.isEmpty) {
      return Center(
        child: AddPhotoButton(
          onPressed: () {
            onPhotoAdded?.call();
          },
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Scrollbar(
        controller: scrollController,
        child: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: AddPhotoButton(
                  onPressed: () {
                    onPhotoAdded?.call();
                  },
                ),
              ),
              for (var i = 0; i < networkImages.length; i++)
                ListingImage(
                  image: networkImages[i],
                  isNetworkImage: true,
                  onRemove: () {
                    onNetworkImageRemoved?.call(i);
                  },
                ),
              for (var i = 0; i < images.length; i++)
                ListingImage(
                  image: images[i],
                  onRemove: () {
                    onFileImageRemoved?.call(i);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListingProfile extends StatelessWidget {
  const ListingProfile({
    super.key,
    required this.subtitle,
  });

  final Widget subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentUser = context.read<AuthBloc>().state.user;
    final hasImage = currentUser.image != null;

    logger.info('currentUser: $currentUser');

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: hasImage ? NetworkImage(currentUser.image!) : null,
          child: hasImage ? null : Text(currentUser.name[0].toUpperCase()),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentUser.name, style: theme.textTheme.labelLarge),
            subtitle,
          ],
        ),
      ],
    );
  }
}

class ListingImage extends StatelessWidget {
  const ListingImage({
    super.key,
    required this.image,
    this.onRemove,
    this.isNetworkImage = false,
  });

  final String image;
  final void Function()? onRemove;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: isNetworkImage
              ? Image.network(
                  image,
                  fit: BoxFit.cover,
                )
              : Image.file(
                  File(image),
                  fit: BoxFit.cover,
                ),
        ),
        Positioned(
          top: 8,
          right: 16,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close_rounded,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AddPhotoButton extends StatelessWidget {
  const AddPhotoButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton.outlined(
          onPressed: onPressed,
          icon: const Icon(Icons.add_a_photo),
          iconSize: 32,
        ),
        const SizedBox(height: 4),
        const Text('Add a photo'),
      ],
    );
  }
}

class ListingField extends StatelessWidget {
  const ListingField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.maxLines = 1,
    this.minLines,
    this.number = false,
    this.readOnly = false,
    this.focusNode,
    this.onTap,
    this.suffixIcon,
    this.helperText,
    this.onChanged,
    this.errorText,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final int maxLines;
  final int? minLines;
  final bool number;
  final bool readOnly;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final String? helperText;
  final void Function(String)? onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: const OutlineInputBorder(),
        helperText: helperText,
        errorText: errorText,
      ),
      maxLines: maxLines,
      minLines: minLines,
      keyboardType: number ? TextInputType.number : null,
      inputFormatters: number
          ? [
              FilteringTextInputFormatter.allow(
                RegExp(r'^([1-9]\d*|0)\.?\d*$'),
              ),
            ]
          : null,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
    );
  }
}
