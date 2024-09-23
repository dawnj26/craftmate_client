import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/project_management/edit_project/view/edit_project_page.dart';
import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/comment/bloc/comment_bloc.dart';
import 'package:craftmate_client/project_management/view_project/comment/view/comment_modal.dart';
import 'package:craftmate_client/project_management/view_project/settings/view/settings_page.dart';
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
    final project = BlocProvider.of<ViewProjectBloc>(context).state.project;

    return BlocListener<ViewProjectBloc, ViewProjectState>(
      listener: _handleState,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              itemBuilder: (_) => [
                PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).push(
                      SettingsPage.route(
                        BlocProvider.of<ViewProjectBloc>(context).state.project,
                        RepositoryProvider.of(context),
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
              ],
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
              creator: project.creator,
              projectTitle: project.title,
              project: project,
            ),
            _ProjectBody(project: project),
          ],
        ),
      ),
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
        message: state.errMessage,
        title: 'Oops!',
      );
    } else if (state is ViewProjectLoading) {
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
          previous.project.imageUrl != current.project.imageUrl,
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
            sectionName: 'Description',
            type: EditProjectType.description,
            canEdit: canEdit,
          ),
          const Divider(),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) {
              final res =
                  previous.project.description != current.project.description;
              return res;
            },
            builder: (context, state) {
              return ProjectDescription(
                key: const Key('viewProject_description'),
                descriptionJson: state.project.description,
              );
            },
          ),
          const Gap(12.0),
          ProjectBodySection(
            sectionName: 'Steps',
            type: EditProjectType.steps,
            canEdit: canEdit,
          ),
          const Divider(),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.steps != current.project.steps,
            builder: (context, state) {
              return ProjectSteps(
                key: const Key('viewProject_steps'),
                stepJson: state.project.steps,
              );
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
                    RepositoryProvider.of<ProjectRepository>(context),
                    BlocProvider.of<ViewProjectBloc>(context).state.project,
                    type,
                  ),
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
          ),
          const Gap(16.0),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project != current.project,
            builder: (context, state) {
              final project = state.project;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ProjectInfo(
                    projectTitle: project.title,
                  ),
                  Tags(tags: project.tags),
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

class Tags extends StatelessWidget {
  const Tags({super.key, required this.tags});

  final List<Tag>? tags;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: tags == null || tags!.isEmpty
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(vertical: 16.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: tags!.map((e) => CategoryTag(tagText: e.name)).toList(),
      ),
    );
  }
}

class SocialCounters extends StatelessWidget {
  const SocialCounters({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = 20.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.likeCount != current.project.likeCount,
            builder: (context, state) {
              return Counter(
                countText: '${state.project.likeCount}',
                icon: const Icon(Icons.favorite_outline),
              );
            },
          ),
          const Gap(gap),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.forkCount != current.project.forkCount,
            builder: (context, state) {
              return Counter(
                countText: '${state.project.forkCount}',
                icon: const Icon(Icons.transform),
              );
            },
          ),
          const Gap(gap),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.commentCount != current.project.commentCount,
            builder: (context, state) {
              return Counter(
                countText: '${state.project.commentCount}',
                icon: const Icon(Icons.mode_comment_outlined),
              );
            },
          ),
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
                previous.project.isLiked != current.project.isLiked,
            builder: (context, state) {
              final project = state.project;
              final bloc = context.read<ViewProjectBloc>();

              return OutlinedButton.icon(
                onPressed: () {
                  bloc.add(const ViewProjectLiked());
                },
                icon: Icon(
                  project.isLiked ? Icons.favorite : Icons.favorite_outline,
                ),
                label: Text(project.isLiked ? 'Liked' : 'Like'),
              );
            },
          ),
        ),
        IconButton(
          onPressed: () => _handleComment(
            context,
            project: context.read<ViewProjectBloc>().state.project,
            projectRepo: RepositoryProvider.of<ProjectRepository>(context),
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
    required ProjectRepository projectRepo,
  }) {
    showMaterialModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      builder: (context) {
        return BlocProvider(
          create: (context) => CommentBloc(
            projectRepo: projectRepo,
          ),
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
