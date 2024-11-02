import 'package:craftmate_client/dashboard/home/view/components/bottom_loader.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/project_management/user_projects/search/bloc/search_bloc.dart';
import 'package:craftmate_client/project_management/user_projects/view/screens/user_project_screen.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';

class ProjectSearchScreen extends StatefulWidget {
  const ProjectSearchScreen({super.key});

  @override
  State<ProjectSearchScreen> createState() => _ProjectSearchScreenState();
}

class _ProjectSearchScreenState extends State<ProjectSearchScreen> {
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();
  final _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode.requestFocus();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          focusNode: _focusNode,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search projects',
          ),
          onChanged: (value) {
            context
                .read<ProjectSearchBloc>()
                .add(ProjectSearchEvent.searchProjects(query: value));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              _searchController.clear();
              context
                  .read<ProjectSearchBloc>()
                  .add(const ProjectSearchEvent.clearSearch());
            },
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(),
          Expanded(
            child: BlocBuilder<ProjectSearchBloc, ProjectSearchState>(
              builder: (context, state) {
                return state.when(
                  initial: (_, __) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.searchFlat.image(
                          height: 120,
                          width: 120,
                        ),
                        const Gap(20.0),
                        Text(
                          'Search for projects',
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    );
                  },
                  loading: (_, __) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (projects, pagination) {
                    if (projects.isEmpty) {
                      return const EmptyMessage(
                        emptyMessage: 'No projects found',
                      );
                    }

                    return SearchList(
                      scrollController: _scrollController,
                      projects: projects,
                      itemCount: pagination.hasNextPage
                          ? projects.length + 1
                          : projects.length,
                    );
                  },
                  error: (_, __, message) {
                    return Center(
                      child: Text('Error: $message'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<ProjectSearchBloc>()
          .add(const ProjectSearchEvent.loadMoreProjects());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class SearchList extends StatelessWidget {
  const SearchList({
    super.key,
    required this.scrollController,
    required this.projects,
    required this.itemCount,
  });

  final ScrollController scrollController;
  final List<Project> projects;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search results',
            style: theme.textTheme.titleLarge,
          ),
          const Gap(12.0),
          Expanded(
            child: ListView.builder(
              controller: scrollController,
              itemCount: itemCount,
              itemBuilder: (context, index) {
                if (index == projects.length) {
                  return const BottomLoader();
                }

                final project = projects[index];
                return ProjectCard(
                  project: project,
                  onLongPress: () {},
                  onTap: () {
                    Navigator.of(context)
                        .push(ViewProjectPage.route(project.id));
                  },
                  showTrailing: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
