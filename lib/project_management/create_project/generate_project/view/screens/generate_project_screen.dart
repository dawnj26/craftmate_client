import 'dart:io';

import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:craftmate_client/project_management/create_project/generate_project/bloc/generate_project_bloc.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_repository/material_repository.dart' as m;

class GenerateProjectScreen extends StatefulWidget {
  const GenerateProjectScreen({super.key});

  @override
  State<GenerateProjectScreen> createState() => _GenerateProjectScreenState();
}

class _GenerateProjectScreenState extends State<GenerateProjectScreen> {
  final _pageController = PageController();

  int _curPage = 0;
  double _progress = 0;

  var _difficulty = Difficulty.easy;
  String? _errorText;
  String _nextButtonText = 'Next';

  final _projectTypeController = TextEditingController();
  final _additionalPromptController = TextEditingController();
  final _additionalPromptFocusNode = FocusNode();
  final _projectTypeFocusNode = FocusNode();

  List<m.Material> _selectedMaterials = [];

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    _projectTypeController.dispose();
    _projectTypeFocusNode.dispose();
    _additionalPromptController.dispose();
    _additionalPromptFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate Project'),
        bottom: ProgressBar(
          progress: _progress,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                ProjectType(
                  controller: _projectTypeController,
                  focusNode: _projectTypeFocusNode,
                  errorText: _errorText,
                ),
                ProjectDifficulty(
                  onDifficultyChanged: (difficulty) {
                    _difficulty = difficulty;
                  },
                ),
                MaterialSelection(
                  onMaterialsSelected: (materials) {
                    _selectedMaterials = materials;
                  },
                ),
                AdditionalPrompt(
                  controller: _additionalPromptController,
                  focusNode: _additionalPromptFocusNode,
                ),
                BlocBuilder<GenerateProjectBloc, GenerateProjectState>(
                  builder: (context, state) {
                    return Summary(
                      projectType: _projectTypeController.text,
                      difficulty: _difficulty,
                      materials: _selectedMaterials,
                      additionalPrompt: _additionalPromptController.text,
                      imagePath: state.imagePath,
                    );
                  },
                ),
              ],
              onPageChanged: (index) {
                setState(() {
                  _curPage = index;
                  _progress = _curPage / 4;
                  if (_curPage == 4) {
                    _nextButtonText = 'Generate';
                  } else {
                    _nextButtonText = 'Next';
                  }
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                  child: const Text('Back'),
                ),
                FilledButton(
                  onPressed: _handleNextPage,
                  child: Text(_nextButtonText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void generateSuggestions() {
    final projectType = _projectTypeController.text;
    final difficulty = _difficulty == Difficulty.easy
        ? 'easy'
        : _difficulty == Difficulty.medium
            ? 'medium'
            : 'hard';
    final materials = _selectedMaterials.map((e) => e.name).toList();
    final additionalPrompt = _additionalPromptController.text;

    context.read<GenerateProjectBloc>().add(
          GenerateProjectEvent.generateSuggestions(
            type: projectType,
            difficulty: difficulty,
            materials: materials,
            additionalInfo: additionalPrompt,
          ),
        );
  }

  void _handleNextPage() {
    if (_curPage == 4) {
      generateSuggestions();
      return;
    }

    if (_curPage == 0 && _projectTypeController.text.isEmpty) {
      setState(() {
        _errorText = 'Please enter a project type';
      });
      return;
    }

    _projectTypeFocusNode.unfocus();
    _additionalPromptFocusNode.unfocus();

    _errorText = null;
    _pageController.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }
}

class AdditionalPrompt extends StatelessWidget {
  const AdditionalPrompt({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Would you like to specify the project further (e.g., scarf, hat, chair) or should we surprise you?',
            style: theme.textTheme.headlineLarge,
          ),
          const Gap(24),
          TextField(
            controller: controller,
            focusNode: focusNode,
            decoration: const InputDecoration(
              hintText: 'Enter additional prompt',
              border: OutlineInputBorder(),
            ),
            minLines: 4,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.projectType,
    required this.difficulty,
    required this.materials,
    required this.additionalPrompt,
    this.imagePath,
  });

  final String projectType;
  final Difficulty difficulty;
  final List<m.Material> materials;
  final String additionalPrompt;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Summary',
              style: theme.textTheme.headlineLarge,
            ),
            const Divider(
              height: 32,
            ),
            Text(
              'Project Type:',
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const Gap(8),
            _PrimaryCard(text: projectType),
            const Gap(16),
            Text(
              'Difficulty: ',
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const Gap(8),
            _PrimaryCard(
              text: difficulty == Difficulty.easy
                  ? 'Easy'
                  : difficulty == Difficulty.medium
                      ? 'Medium'
                      : 'Hard',
            ),
            const Gap(16),
            Text(
              'Materials: ',
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const Gap(8),
            if (imagePath != null)
              GestureDetector(
                onTap: () => _viewImage(context, imagePath!),
                child: Image.file(
                  File(imagePath!),
                  height: screenSize.height * 0.25,
                  fit: BoxFit.cover,
                ),
              )
            else
              Wrap(
                spacing: 4,
                children: materials
                    .map(
                      (material) => Chip(
                        label: Text(material.name),
                      ),
                    )
                    .toList(),
              ),
            const Gap(16.0),
            Text(
              'Additional prompt: ',
              style: theme.textTheme.labelMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const Gap(8),
            _PrimaryCard(
              text: additionalPrompt.isEmpty ? 'None' : additionalPrompt,
            ),
            const Gap(24),
            Text(
              'AI can make mistakes. Check important info.',
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _viewImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (context) {
        return ZoomPhoto(
          imageUrl: imageUrl,
          isFile: true,
        );
      },
    );
  }
}

class _PrimaryCard extends StatelessWidget {
  const _PrimaryCard({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.primaryContainer,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          text,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}

class MaterialSelection extends StatelessWidget {
  const MaterialSelection({super.key, this.onMaterialsSelected});

  final void Function(List<m.Material> materials)? onMaterialsSelected;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    final theme = Theme.of(context);
    return BlocBuilder<GenerateProjectBloc, GenerateProjectState>(
      builder: (context, state) {
        switch (state) {
          case Initial():
            context
                .read<GenerateProjectBloc>()
                .add(const GenerateProjectEvent.materialsLoaded());
            return const Center(
              child: CircularProgressIndicator(),
            );
          case LoadingMaterials():
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            return Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Select materials which ones you'd like to use. (Optional)",
                        style: theme.textTheme.headlineMedium,
                      ),
                      const Gap(16),
                      MaterialsDropdown(
                        materials: state.materials,
                        onMaterialsSelected: onMaterialsSelected,
                      ),
                      const Gap(16),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(child: Divider()),
                          SizedBox(width: 8),
                          Text('Or'),
                          SizedBox(width: 8),
                          Expanded(child: Divider()),
                        ],
                      ),
                      const Gap(16),
                      OutlinedButton.icon(
                        onPressed: () => _selectPhoto(context),
                        label: const Text('Add Photo'),
                        icon: const Icon(Icons.camera_alt),
                      ),
                      const Gap(16),
                      if (state.imagePath != null)
                        GestureDetector(
                          onTap: () => _viewImage(context, state.imagePath!),
                          child: Image.file(
                            File(state.imagePath!),
                            height: screenSize.height * 0.25,
                            fit: BoxFit.cover,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
        }
      },
    );
  }

  void _viewImage(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (context) {
        return ZoomPhoto(
          imageUrl: imageUrl,
          isFile: true,
        );
      },
    );
  }

  void _selectPhoto(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Take a photo'),
              onTap: () async {
                Navigator.pop(context);
                final file = await _pickImage(ImageSource.gallery);

                if (file == null || !context.mounted) {
                  return;
                }

                context.read<GenerateProjectBloc>().add(
                      GenerateProjectEvent.imageSelected(
                        imagePath: file.path,
                      ),
                    );
              },
            ),
            ListTile(
              title: const Text('Choose from gallery'),
              onTap: () async {
                Navigator.pop(context);
                final file = await _pickImage(ImageSource.gallery);

                if (file == null || !context.mounted) {
                  return;
                }

                context.read<GenerateProjectBloc>().add(
                      GenerateProjectEvent.imageSelected(
                        imagePath: file.path,
                      ),
                    );
              },
            ),
          ],
        );
      },
    );
  }

  Future<XFile?> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    return pickedFile;
  }
}

class MaterialsDropdown extends StatefulWidget {
  const MaterialsDropdown({
    super.key,
    required this.materials,
    this.onMaterialsSelected,
  });

  final List<m.Material> materials;
  final void Function(List<m.Material> materials)? onMaterialsSelected;

  @override
  State<MaterialsDropdown> createState() => _MaterialsDropdownState();
}

class _MaterialsDropdownState extends State<MaterialsDropdown>
    with AutomaticKeepAliveClientMixin<MaterialsDropdown> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DropdownSearch<m.Material>.multiSelection(
      onChanged: (value) => widget.onMaterialsSelected?.call(value),
      items: (filter, loadProps) => widget.materials,
      dropdownBuilder: (context, selectedItems) {
        if (selectedItems.isEmpty) {
          return const Text('Select materials');
        }

        return Wrap(
          spacing: 4,
          children: selectedItems
              .map(
                (item) => Chip(
                  label: Text(item.name),
                  onDeleted: () {
                    setState(() {
                      selectedItems.remove(item);
                      widget.onMaterialsSelected?.call(selectedItems);
                    });
                  },
                ),
              )
              .toList(),
        );
      },
      popupProps: PopupPropsMultiSelection.menu(
        searchDelay: const Duration(milliseconds: 300),
        fit: FlexFit.loose,
        showSearchBox: true,
        itemBuilder: (context, item, isDisabled, isSelected) {
          return ListTile(
            title: Text(item.name),
          );
        },
        searchFieldProps: const TextFieldProps(
          decoration: InputDecoration(
            hintText: 'Search materials',
          ),
        ),
      ),
      compareFn: (item1, item2) => item1 == item2,
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

enum Difficulty { easy, medium, hard }

class ProjectDifficulty extends StatefulWidget {
  const ProjectDifficulty({super.key, this.onDifficultyChanged});

  final void Function(Difficulty difficulty)? onDifficultyChanged;

  @override
  State<ProjectDifficulty> createState() => _ProjectDifficultyState();
}

class _ProjectDifficultyState extends State<ProjectDifficulty>
    with AutomaticKeepAliveClientMixin<ProjectDifficulty> {
  Difficulty? _difficulty = Difficulty.easy;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What difficulty level would you like?',
                style: theme.textTheme.headlineMedium,
              ),
              const Gap(16),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: RadioListTile(
                  title: const Text('Easy'),
                  value: Difficulty.easy,
                  groupValue: _difficulty,
                  onChanged: _onChanged,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: RadioListTile(
                  title: const Text('Medium'),
                  value: Difficulty.medium,
                  groupValue: _difficulty,
                  onChanged: _onChanged,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: RadioListTile(
                  title: const Text('Hard'),
                  value: Difficulty.hard,
                  groupValue: _difficulty,
                  onChanged: _onChanged,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onChanged(Difficulty? value) {
    setState(() {
      _difficulty = value;
      widget.onDifficultyChanged?.call(value!);
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class ProjectType extends StatefulWidget {
  const ProjectType({
    super.key,
    required this.controller,
    required this.focusNode,
    this.errorText,
  });

  final TextEditingController controller;
  final String? errorText;
  final FocusNode focusNode;

  @override
  State<ProjectType> createState() => _ProjectTypeState();
}

class _ProjectTypeState extends State<ProjectType>
    with AutomaticKeepAliveClientMixin<ProjectType> {
  final _scrollController = ScrollController();
  final _projectTypes = [
    'Knitting',
    'Woodworking',
    'Sewing',
    'Painting',
    'Crocheting',
    'Jewelry Making',
    'Scrapbooking',
    'Embroidery',
    'Quilting',
    'Leatherworking',
    'Pottery',
    'Paper Crafting',
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What type of crafting project would you like to generate?',
                style: theme.textTheme.headlineMedium,
              ),
              const Gap(16),
              TextField(
                controller: widget.controller,
                focusNode: widget.focusNode,
                decoration: InputDecoration(
                  hintText: 'Enter type of project',
                  border: const OutlineInputBorder(),
                  errorText: widget.errorText,
                ),
              ),
              const Gap(16),
              Container(
                clipBehavior: Clip.antiAlias,
                height: screenSize.height * 0.25,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Scrollbar(
                  controller: _scrollController,
                  thumbVisibility: true,
                  child: ListView.separated(
                    controller: _scrollController,
                    itemCount: _projectTypes.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        titleTextStyle: theme.textTheme.labelLarge?.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                        title: Text(_projectTypes[index]),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          widget.controller.text += '${_projectTypes[index]} ';
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 1,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class ProgressBar extends StatelessWidget implements PreferredSizeWidget {
  const ProgressBar({
    super.key,
    required this.progress,
  });

  final double progress;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: progress),
      curve: Curves.ease,
      duration: const Duration(milliseconds: 200),
      builder: (context, value, _) {
        return LinearProgressIndicator(
          value: value,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme.of(context).primaryColor,
          ),
        );
      },
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(6.0);
}
