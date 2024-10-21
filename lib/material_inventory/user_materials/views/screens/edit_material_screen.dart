import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/material_inventory/user_materials/bloc/edit_material/edit_material_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_repository/material_repository.dart' as m;

class EditMaterialScreen extends StatelessWidget {
  const EditMaterialScreen({super.key, required this.material});

  final m.Material material;

  static Route<void> route(m.Material material) {
    return MaterialPageRoute<void>(
      builder: (_) => EditMaterialScreen(
        material: material,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditMaterialBloc(
        materialRepo: context.read(),
        material: material,
      )..add(const EditMaterialEvent.started()),
      child: BlocConsumer<EditMaterialBloc, EditMaterialState>(
        buildWhen: (_, __) => false,
        listener: _handleState,
        builder: (context, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) async {
              if (didPop) {
                return;
              }

              await _handlePop(context);
            },
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Edit material'),
                actions: [
                  TextButton.icon(
                    onPressed: () {
                      final curState = context.read<EditMaterialBloc>().state;

                      final isDirty = switch (curState) {
                        Changed() => true,
                        Uploaded() => true,
                        EditMaterialState() => false,
                      };

                      logger.info('isDirty: $isDirty');

                      if (!isDirty) {
                        return;
                      }
                      FocusManager.instance.primaryFocus?.unfocus();
                      context.read<EditMaterialBloc>().add(
                            const EditMaterialEvent.reset(),
                          );
                    },
                    label: const Text('Reset'),
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
              body: const _EditMaterialBody(),
            ),
          );
        },
      ),
    );
  }

  Future<void> _handlePop(
    BuildContext context,
  ) async {
    final bloc = context.read<EditMaterialBloc>();
    final curState = bloc.state;

    final isDirty = switch (curState) {
      Changed() => true,
      Uploaded() => true,
      EditMaterialState() => false,
    };

    if (!isDirty) {
      Navigator.pop(context);
      return;
    }

    FocusManager.instance.primaryFocus?.unfocus();

    final shouldSave = await Modal.instance.showConfirmationModal(
      context: context,
      content: const Text('Do you want to save your changes?'),
      title: 'Save changes',
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: const Text('Discard'),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Save'),
        ),
      ],
    );

    if (shouldSave == null) {
      return;
    }

    if (!context.mounted) {
      return;
    }

    if (!shouldSave) {
      Navigator.pop(context);
      return;
    }

    final formIsValid = Formz.validate([
      curState.name,
      curState.description,
      curState.category,
    ]);

    if (!formIsValid) {
      Alert.instance.showSnackbar(context, 'Please fill in all fields');
    } else {
      bloc.add(const EditMaterialEvent.submit());
    }
  }

  void _handleState(BuildContext context, EditMaterialState state) {
    switch (state) {
      case Uploading():
        Modal.instance.showLoadingDialog(context);
      case Uploaded():
        Navigator.pop(context);
      case Success():
        Navigator.pop(context);
        Modal.instance.showConfirmationModal(
          context: context,
          title: 'Successfully saved',
          content: const Text('Your changes have been saved'),
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
      case Error(message: final msg):
        Navigator.pop(context);
        Modal.instance.showConfirmationModal(
          context: context,
          title: 'Error',
          content: Text(msg),
          actions: [
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      default:
        break;
    }
  }
}

class _EditMaterialBody extends StatelessWidget {
  const _EditMaterialBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditMaterialBloc, EditMaterialState>(
      builder: (context, state) {
        switch (state) {
          case Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            return EditForm(materialCategories: state.categories);
        }
      },
    );
  }
}

class EditForm extends StatefulWidget {
  const EditForm({
    super.key,
    required this.materialCategories,
  });

  final List<m.MaterialCategory> materialCategories;

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _quantityController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _descriptionController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    const padding = 12.0;

    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<EditMaterialBloc, EditMaterialState>(
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
                BlocBuilder<EditMaterialBloc, EditMaterialState>(
                  builder: (context, state) {
                    final errorText = state.name.displayError;

                    switch (state) {
                      case Normal():
                        _nameController.text = state.name.value;
                      default:
                    }

                    return TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.title_outlined),
                        errorText: errorText,
                      ),
                      onChanged: (value) =>
                          context.read<EditMaterialBloc>().add(
                                EditMaterialEvent.nameChanged(value),
                              ),
                    );
                  },
                ),
                const Gap(8),
                BlocBuilder<EditMaterialBloc, EditMaterialState>(
                  builder: (context, state) {
                    final errorText = state.description.displayError;
                    switch (state) {
                      case Normal():
                        _descriptionController.text = state.description.value;
                      default:
                    }

                    return TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        labelText: 'Description',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.description_outlined),
                        errorText: errorText,
                      ),
                      onChanged: (value) =>
                          context.read<EditMaterialBloc>().add(
                                EditMaterialEvent.descriptionChanged(value),
                              ),
                      minLines: 3,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                    );
                  },
                ),
                const Gap(8),
                BlocBuilder<EditMaterialBloc, EditMaterialState>(
                  // buildWhen: (previous, current) =>
                  //     previous.category.displayError !=
                  //     current.category.displayError,
                  builder: (context, state) {
                    final errorText = state.category.displayError;

                    return DropdownMenu<int>(
                      leadingIcon: const Icon(Icons.category_outlined),
                      width: screenSize.width - padding * 2,
                      menuHeight: screenSize.height * 0.24,
                      initialSelection: state.category.value,
                      onSelected: (value) {
                        if (value == null) return;

                        context.read<EditMaterialBloc>().add(
                              EditMaterialEvent.categorySelected(value),
                            );
                      },
                      errorText: errorText,
                      dropdownMenuEntries: [
                        const DropdownMenuEntry(
                          value: 0,
                          label: 'Select Category',
                        ),
                        ...widget.materialCategories.map(
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
                BlocBuilder<EditMaterialBloc, EditMaterialState>(
                  builder: (context, state) {
                    switch (state) {
                      case Normal():
                        logger.info('state.quantity: ${state.quantity}');
                        _quantityController.text = state.quantity.toString();
                      default:
                    }

                    return TextField(
                      controller: _quantityController,
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
                          context.read<EditMaterialBloc>().add(
                                const EditMaterialEvent.quantityChanged(1),
                              );
                          return;
                        }

                        context.read<EditMaterialBloc>().add(
                              EditMaterialEvent.quantityChanged(
                                int.parse(value),
                              ),
                            );
                      },
                    );
                  },
                ),
                const Gap(24),
                FilledButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    context.read<EditMaterialBloc>().add(
                          const EditMaterialEvent.submit(),
                        );
                  },
                  child: const Text('Save changes'),
                ),
              ],
            ),
          ),
        ],
      ),
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
      context.read<EditMaterialBloc>().add(
            EditMaterialEvent.imageUploaded(media.path),
          );
    }
  }
}
