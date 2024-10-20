import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/add_material/add_material_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_repository/material_repository.dart' as m;

class AddMaterialScreen extends StatelessWidget {
  const AddMaterialScreen({super.key});

  static Route<void> route() {
    return PageTransition.effect.slideFromRightToLeft(
      const AddMaterialScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddMaterialBloc(
        materialRepo: RepositoryProvider.of<m.MaterialRepository>(context),
      )..add(const AddMaterialEvent.started()),
      child: const AddMaterialForm(),
    );
  }
}

class AddMaterialForm extends StatelessWidget {
  const AddMaterialForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddMaterialBloc, AddMaterialState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          uploading: (_, __, ___, ____, _____, ______) {
            Modal.instance.showLoadingDialog(context);
          },
          uploaded: (_, __, ___, ____, _____, ______) {
            Navigator.pop(context);
          },
          success: (_, __, ___, ____, _____, ______) {
            Navigator.pop(context);
            Modal.instance.showConfirmationModal(
              context: context,
              title: 'Material Added',
              content: const Text('Material has been added successfully'),
              actions: [
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Material'),
        ),
        body: BlocBuilder<AddMaterialBloc, AddMaterialState>(
          builder: (context, state) {
            return state.maybeWhen<Widget>(
              orElse: () {
                return SingleChildScrollView(
                  child: AddForm(
                    materialCategories: state.categories,
                  ),
                );
              },
              loading: (_, __, ___, ____, _____, ______) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              error: (message, _, __, ___, ____, _____, ______) {
                return Center(
                  child: Text(message),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class AddForm extends StatelessWidget {
  const AddForm({super.key, required this.materialCategories});

  final List<m.MaterialCategory> materialCategories;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    const padding = 12.0;

    return Column(
      children: [
        BlocBuilder<AddMaterialBloc, AddMaterialState>(
          buildWhen: (previous, current) =>
              previous.imagePath != current.imagePath,
          builder: (context, state) {
            return _Image(
              imagePath: state.imagePath,
            );
          },
        ),
        const Gap(12),
        Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BlocBuilder<AddMaterialBloc, AddMaterialState>(
                buildWhen: (previous, current) =>
                    previous.name.displayError != current.name.displayError,
                builder: (context, state) {
                  final errorText = state.name.displayError;

                  return TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.title_outlined),
                      errorText: errorText,
                    ),
                    onChanged: (value) => context.read<AddMaterialBloc>().add(
                          AddMaterialEvent.nameChanged(value),
                        ),
                  );
                },
              ),
              const Gap(8),
              BlocBuilder<AddMaterialBloc, AddMaterialState>(
                buildWhen: (previous, current) =>
                    previous.description.displayError !=
                    current.description.displayError,
                builder: (context, state) {
                  final errorText = state.description.displayError;

                  return TextField(
                    decoration: InputDecoration(
                      labelText: 'Description',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.description_outlined),
                      errorText: errorText,
                    ),
                    onChanged: (value) => context.read<AddMaterialBloc>().add(
                          AddMaterialEvent.descriptionChanged(value),
                        ),
                    minLines: 3,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                  );
                },
              ),
              const Gap(8),
              BlocBuilder<AddMaterialBloc, AddMaterialState>(
                buildWhen: (previous, current) =>
                    previous.category.displayError !=
                    current.category.displayError,
                builder: (context, state) {
                  final errorText = state.category.displayError;

                  return DropdownMenu<int>(
                    leadingIcon: const Icon(Icons.category_outlined),
                    width: screenSize.width - padding * 2,
                    menuHeight: screenSize.height * 0.24,
                    initialSelection: 0,
                    onSelected: (value) {
                      if (value == null) return;
                      logger.info('Category selected: $value');

                      context.read<AddMaterialBloc>().add(
                            AddMaterialEvent.categorySelected(value),
                          );
                    },
                    errorText: errorText,
                    dropdownMenuEntries: [
                      const DropdownMenuEntry(
                        value: 0,
                        label: 'Select Category',
                      ),
                      ...materialCategories.map(
                        (category) => DropdownMenuEntry(
                          value: category.id,
                          label: category.name,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const Gap(8),
              BlocBuilder<AddMaterialBloc, AddMaterialState>(
                builder: (context, state) {
                  return TextField(
                    decoration: const InputDecoration(
                      labelText: 'Quantity (optional)',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.format_list_numbered_outlined),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      FilteringTextInputFormatter.deny(
                        RegExp('^0+'),
                      ),
                    ],
                    onChanged: (value) {
                      if (value.isEmpty) {
                        context.read<AddMaterialBloc>().add(
                              const AddMaterialEvent.quantityChanged(1),
                            );
                        return;
                      }

                      context.read<AddMaterialBloc>().add(
                            AddMaterialEvent.quantityChanged(int.parse(value)),
                          );
                    },
                  );
                },
              ),
              const Gap(24),
              FilledButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  context.read<AddMaterialBloc>().add(
                        const AddMaterialEvent.submit(),
                      );
                },
                child: const Text('Add Material'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    this.imagePath,
  });

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            if (imagePath == null) return;
            showDialog(
              context: context,
              builder: (_) {
                return Image.network(
                  imagePath!,
                );
              },
            );
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.6),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: 250,
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: imagePath != null
                  ? Image.network(
                      imagePath!,
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.photo_library),
                          title: const Text('Pick an image from gallery'),
                          onTap: () {
                            Navigator.pop(context);
                            _handleImageUpload(ImageSource.gallery, context);
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.camera_alt),
                          title: const Text('Take a photo'),
                          onTap: () {
                            Navigator.pop(context);
                            _handleImageUpload(ImageSource.camera, context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Upload Image'),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _handleImageUpload(
    ImageSource source,
    BuildContext context,
  ) async {
    final picker = ImagePicker();
    final media = await picker.pickImage(source: source);

    if (media == null) return;

    if (context.mounted) {
      context.read<AddMaterialBloc>().add(
            AddMaterialEvent.imageUploaded(media.path),
          );
    }
  }
}
