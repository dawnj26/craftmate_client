import 'dart:io';

import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/shop/bloc/add_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_category.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_price.dart';
import 'package:craftmate_client/dashboard/shop/models/listing_title.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/add_address_page.dart';
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
          builder: (context, state) {
            switch (state) {
              case Initial() || Loading():
                return const Center(child: CircularProgressIndicator());
            }

            return const AddListingForm();
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
        state.images.isNotEmpty;

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
  const AddListingForm({super.key});

  @override
  State<AddListingForm> createState() => _AddListingFormState();
}

class _AddListingFormState extends State<AddListingForm> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _categoryController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _categoryController.dispose();
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
        const ListingProfile(),
        SizedBox(
          height: screenSize.height * 0.15,
          child: BlocBuilder<AddListingBloc, AddListingState>(
            builder: (context, state) {
              final images = state.images;

              if (images.isEmpty) {
                return Center(
                  child: AddPhotoButton(
                    onPressed: _addPhoto,
                  ),
                );
              }

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Scrollbar(
                  controller: _scrollController,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: AddPhotoButton(
                            onPressed: _addPhoto,
                          ),
                        ),
                        for (var i = 0; i < images.length; i++)
                          ListingImage(
                            image: images[i],
                            onRemove: () {
                              context
                                  .read<AddListingBloc>()
                                  .add(AddListingEvent.imageRemoved(i));
                            },
                          ),
                      ],
                    ),
                  ),
                ),
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
              controller: _titleController,
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
              controller: _descriptionController,
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
              controller: _priceController,
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
              controller: _categoryController,
              hintText: 'Category',
              readOnly: true,
              suffixIcon: const Icon(Icons.arrow_drop_down_rounded),
              onTap: () {
                _showCategoryModal(
                  allCategories: categories,
                  selectedCategory: ProjectCategory(
                    name: _categoryController.text,
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
                    onAddressSelected: (place) {
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
            _categoryController.text = category.name;
          },
        );
      },
    );
  }
}

class ListingProfile extends StatelessWidget {
  const ListingProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentUser = context.read<AuthBloc>().state.user;
    final hasImage = currentUser.image != null;

    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: hasImage ? NetworkImage(currentUser.image!) : null,
          child: hasImage ? null : Text(currentUser.name[0].toUpperCase()),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(currentUser.name, style: theme.textTheme.labelLarge),
            Row(
              children: [
                Text(
                  'Listing on Shop · ',
                  style: theme.textTheme.bodySmall,
                ),
                const Icon(Icons.shopping_bag_rounded, size: 16),
              ],
            ),
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
  });

  final String image;
  final void Function()? onRemove;

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
          child: Image.file(
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
                color: Colors.black.withOpacity(0.5),
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
