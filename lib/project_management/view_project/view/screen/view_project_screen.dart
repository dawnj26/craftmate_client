import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/edit_project/view/edit_project_page.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/comment/bloc/comment_bloc.dart';
import 'package:craftmate_client/project_management/view_project/comment/view/comment_modal.dart';
import 'package:craftmate_client/project_management/view_project/project_settings/view/settings_page.dart';
import 'package:craftmate_client/project_management/view_project/view/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:project_repository/project_repository.dart';
import 'package:user_repository/user_repository.dart';

class ViewProjectScreen extends StatelessWidget {
  const ViewProjectScreen({
    super.key,
  });

  static Route<void> route(Project project) {
    return PageTransition.effect.slideFromRightToLeft(
      const ViewProjectScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = BlocProvider.of<AuthBloc>(context).state.user;
    final theme = Theme.of(context);

    return BlocConsumer<ViewProjectBloc, ViewProjectState>(
      listener: _handleState,
      builder: (context, state) {
        if (state is ViewProjectInitial || state is ViewProjectLoading) {
          return Scaffold(
            body: Center(
              child: LoadingAnimation(color: theme.colorScheme.primary),
            ),
          );
        }

        return RefreshIndicator(
          displacement: 100.0,
          onRefresh: () async {
            final newState = context.read<ViewProjectBloc>().stream.first;
            context.read<ViewProjectBloc>().add(const ViewProjectRefreshed());
            await newState;
          },
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () {
                  final curProj =
                      BlocProvider.of<ViewProjectBloc>(context).state.project;
                  Navigator.of(context).pop(curProj);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              actions: [
                PopupMenuButton(
                  itemBuilder: (_) {
                    if (currentUser.id != state.project.creator.id) {
                      return [
                        const PopupMenuItem(
                          child: Text(
                            'Share',
                          ),
                        ),
                      ];
                    }

                    return [
                      PopupMenuItem(
                        onTap: () {
                          final bloc = context.read<ViewProjectBloc>();
                          Navigator.of(context).push(
                            SettingsPage.route(
                              bloc.state.project,
                              bloc,
                            ),
                          );
                        },
                        child: const Text(
                          'Settings',
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text(
                          'Share',
                        ),
                      ),
                    ];
                  },
                ),
              ],
            ),
            body: ListView(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: InkWell(
                    onTap: () => _showImageOptions(context),
                    child: const HeroImage(),
                  ),
                ),
                _ProjectCardHeader(
                  creator: state.project.creator,
                  projectTitle: state.project.title,
                  project: state.project,
                ),
                _ProjectBody(project: state.project),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showImage(BuildContext context) {
    final project = BlocProvider.of<ViewProjectBloc>(context).state.project;

    if (project.imageUrl == null) {
      return;
    }

    showDialog(
      context: context,
      builder: (_) {
        return Image.network(project.imageUrl!);
      },
    );
  }

  void _showImageOptions(BuildContext context) {
    final currentUser = BlocProvider.of<AuthBloc>(context).state.user;
    final project = BlocProvider.of<ViewProjectBloc>(context).state.project;

    if (project.creator.id != currentUser.id) {
      _showImage(context);
      return;
    }

    showMaterialModalBottomSheet(
      context: context,
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.upload),
              title: const Text('Upload image'),
              onTap: () => _handleUploadImage(ImageSource.gallery, context),
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a photo'),
              onTap: () => _handleUploadImage(ImageSource.camera, context),
            ),
            ListTile(
              leading: const Icon(Icons.remove_red_eye_outlined),
              title: const Text('View photo'),
              onTap: () => _showImage(context),
            ),
          ],
        );
      },
    );
  }

  Future<void> _handleUploadImage(
    ImageSource source,
    BuildContext context,
  ) async {
    final bloc = BlocProvider.of<ViewProjectBloc>(context);

    final picker = ImagePicker();
    final media = await picker.pickImage(source: source);

    if (media == null) {
      return;
    }

    bloc.add(ViewProjectImageUploaded(media.path));
  }

  void _handleState(BuildContext context, ViewProjectState state) {
    if (state is ViewProjectFailed) {
      Modal.instance.showConfirmationModal(
        context: context,
        content: Text(state.errMessage),
        title: 'Oops!',
      );
    } else if (state is ViewProjectUploading) {
      Modal.instance.showLoadingDialog(context);
    } else if (state is ViewProjectUploadSuccess) {
      if (state.isModalOpen) {
        Navigator.of(context).pop();
      }
      Navigator.of(context).pop();
    }
  }
}

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewProjectBloc, ViewProjectState>(
      buildWhen: (previous, current) =>
          previous.project.imageUrl != current.project.imageUrl ||
          current is ViewProjectRefreshSuccess,
      builder: (context, state) {
        final theme = Theme.of(context);
        final textTheme = theme.textTheme;
        final project = state.project;

        final currentUser = BlocProvider.of<AuthBloc>(context).state.user;
        var imageText = 'Add image +';

        if (project.creator.id != currentUser.id) {
          imageText = 'No photo';
        }

        return project.imageUrl == null
            ? Center(
                child: Text(
                  imageText,
                  style: textTheme.headlineSmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              )
            : Image.network(
                project.imageUrl!,
                fit: BoxFit.cover,
              );
      },
    );
  }
}

class _ProjectBody extends StatelessWidget {
  const _ProjectBody({required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final currentUser = BlocProvider.of<AuthBloc>(context).state.user;
    final canEdit = currentUser.id == project.creator.id;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectBodySection(
            sectionName: 'Recipe',
            type: EditProjectType.description,
            canEdit: canEdit,
          ),
          const Divider(),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project != current.project,
            builder: (context, state) {
              return ProjectDescription(
                key: const Key('viewProject_description'),
                steps: state.project.steps,
                description: state.project.description,
              );
              // return const Placeholder();
            },
          ),
        ],
      ),
    );
  }

  bool hasContent(List<dynamic> json) {
    final content = (json[0] as Map<String, dynamic>)['insert'] as String;
    final noContent = json.length == 1 && content.length == 1;

    return noContent;
  }
}

class ProjectBodySection extends StatelessWidget {
  const ProjectBodySection({
    super.key,
    required this.sectionName,
    required this.type,
    required this.canEdit,
  });

  final String sectionName;
  final EditProjectType type;
  final bool canEdit;

  @override
  Widget build(BuildContext context) {
    final children = _buildContent(context);
    return Row(
      children: children,
    );
  }

  List<Widget> _buildContent(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final widgets = canEdit
        ? [
            Text(
              sectionName,
              style: textTheme.titleLarge,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  EditProjectPage.route(
                    BlocProvider.of<ViewProjectBloc>(context).state.project,
                  ),
                ).then(
                  (_) {
                    if (context.mounted) {
                      context.read<ViewProjectBloc>().add(
                            const ViewProjectReloaded(),
                          );
                    }
                  },
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ]
        : [
            Text(
              sectionName,
              style: textTheme.titleLarge,
            ),
          ];

    return widgets;
  }
}

class _ProjectCardHeader extends StatelessWidget {
  const _ProjectCardHeader({
    required this.creator,
    required this.projectTitle,
    required this.project,
  });

  final User creator;
  final String projectTitle;
  final Project project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: colorScheme.surfaceContainerLow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreatorAvatar(
            initialName: creator.name[0].toUpperCase(),
            fullName: creator.name,
            updatedAt: project.updatedAt,
          ),
          const Gap(16.0),
          if (project.fork != null)
            Text(
              'Forked from ${project.fork!.title}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          const Gap(8.0),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project != current.project ||
                current is ViewProjectRefreshSuccess,
            builder: (context, state) {
              final project = state.project;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ProjectInfo(
                    projectTitle: project.title,
                  ),
                  Tags(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    tags: project.tags,
                  ),
                ],
              );
            },
          ),
          const SocialCounters(),
          const _ActionButtons(),
        ],
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.isLiked != current.project.isLiked ||
                current is ViewProjectRefreshSuccess,
            builder: (context, state) {
              final project = state.project;
              final bloc = context.read<ViewProjectBloc>();

              return ProjectLikeButton(
                isLiked: project.isLiked,
                onPressed: () {
                  bloc.add(const ViewProjectLiked());
                },
              );
            },
          ),
        ),
        IconButton(
          onPressed: () => _handleComment(
            context,
            project: context.read<ViewProjectBloc>().state.project,
          ),
          icon: const Icon(Icons.mode_comment_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.transform),
        ),
      ],
    );
  }

  void _handleComment(
    BuildContext context, {
    required Project project,
  }) {
    showMaterialModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      builder: (_) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CommentBloc(
                projectRepo: context.read<ProjectRepository>(),
              ),
            ),
            BlocProvider.value(
              value: context.read<ViewProjectBloc>(),
            ),
          ],
          child: CommentModal(
            theme: Theme.of(context),
            project: project,
            screenSize: MediaQuery.of(context).size,
            scrollController: ModalScrollController.of(context),
          ),
        );
      },
    );
  }
}

class _ProjectInfo extends StatelessWidget {
  const _ProjectInfo({
    required this.projectTitle,
  });

  final String projectTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          projectTitle,
          style: textTheme.titleLarge,
        ),
      ],
    );
  }
}
