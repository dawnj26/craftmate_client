import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/home/view/tabs/for_you_tab.dart';
import 'package:craftmate_client/dashboard/profile/view/screens/profile_screen.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/user_profile/bloc/profile_projects/profile_project_bloc.dart'
    as p;
import 'package:craftmate_client/user_profile/bloc/view_profile/view_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: BlocBuilder<ViewProfileBloc, ViewProfileState>(
          builder: (context, state) {
            switch (state) {
              case Initial() || Loading():
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case Loaded(user: final user):
                return _ProfileView(user: user);
              case Error(message: final message):
                return Center(
                  child: Text(message),
                );
            }

            return const Center(
              child: Text('An error occurred'),
            );
          },
        ),
      ),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: _buildSliverHeader,
      body: TabBarView(
        children: [
          BlocProvider(
            create: (context) => p.ProfileProjectBloc(
              projectRepository: context.read(),
              userId: user.id,
            )..add(
                const p.ProfileProjectEvent.started(),
              ),
            child: Builder(
              builder: (context) {
                final controller = PrimaryScrollController.of(context);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<p.ProfileProjectBloc, p.ProfileProjectState>(
                      builder: (context, state) {
                        switch (state) {
                          case p.Initial() || p.Loading():
                            return const SizedBox.shrink();
                        }

                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CategoryFilter(
                            selectedCategory: state.selectedCategory,
                            categories: state.categories,
                            onSelected: (value) {
                              context.read<p.ProfileProjectBloc>().add(
                                    p.ProfileProjectEvent.categoryChanged(
                                      value,
                                    ),
                                  );
                            },
                          ),
                        );
                      },
                    ),
                    Expanded(child: _CustomListView(controller)),
                  ],
                );
              },
            ),
          ),
          const Center(
            child: Text('Tab 2'),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSliverHeader(
    BuildContext context,
    bool innerBoxIsScrolled,
  ) {
    final theme = Theme.of(context);
    return [
      SliverAppBar(
        backgroundColor: theme.colorScheme.surface,
        centerTitle: true,
        title: Text(user.name),
        scrolledUnderElevation: 0.0,
        pinned: true,
      ),
      SliverToBoxAdapter(
        child: Profile(user: user),
      ),
      SliverPersistentHeader(
        pinned: true,
        delegate: TabBarPersistentHeader(
          tabBar: const TabBar(
            tabs: [
              Tab(
                text: 'Projects',
              ),
              Tab(
                text: 'Products',
              ),
            ],
          ),
        ),
      ),
    ];
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    final curUser = context.select((AuthBloc bloc) => bloc.state.user);

    final theme = Theme.of(context);
    final hasImage = user.image != null;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: hasImage ? () => _showImage(context) : null,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: hasImage ? NetworkImage(user.image!) : null,
              child: hasImage
                  ? null
                  : Text(
                      user.name[0].toUpperCase(),
                      style: theme.textTheme.headlineMedium,
                    ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user.email,
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          if (user.bio != null)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                textAlign: TextAlign.center,
                user.bio!,
              ),
            ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileCounter(count: user.projectCount, label: 'Projects'),
              ProfileCounter(count: user.followingCount, label: 'Following'),
              ProfileCounter(count: user.followerCount, label: 'Followers'),
            ],
          ),
          const SizedBox(height: 16),
          if (curUser.id != user.id)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    context
                        .read<ViewProfileBloc>()
                        .add(const ViewProfileEvent.followToggled());
                  },
                  icon: Icon(user.isFollowing ? Icons.check : Icons.add),
                  label: Text(user.isFollowing ? 'Followed' : 'Follow'),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      ChatScreen.route(user),
                    );
                  },
                  child: const Text('Message'),
                ),
              ],
            ),
        ],
      ),
    );
  }

  void _showImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Image.network(user.image!);
      },
    );
  }
}

class _CustomListView extends StatefulWidget {
  const _CustomListView(this.controller);

  final ScrollController controller;

  @override
  State<_CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<_CustomListView> {
  @override
  void initState() {
    // TODO: implement initState
    widget.controller.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    widget.controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<p.ProfileProjectBloc, p.ProfileProjectState>(
      builder: (context, state) {
        switch (state) {
          case p.Initial() || p.Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case p.Error(message: final message):
            return Center(
              child: Text(message),
            );
          case p.Loaded(
              projects: final projects,
              page: final page,
              // categories: final categories
            ):
            if (projects.isEmpty) {
              return const EmptyMessage(emptyMessage: 'No projects found');
            }

            return ProjectGrid(
              scrollController: widget.controller,
              projects: projects,
              paginatedProjects: page,
            );
        }

        return const Center(
          child: Text('An error occurred'),
        );
      },
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<p.ProfileProjectBloc>()
          .add(const p.ProfileProjectEvent.loadMoreProjects());
    }
  }

  bool get _isBottom {
    if (!widget.controller.hasClients) return false;
    final maxScroll = widget.controller.position.maxScrollExtent;
    final currentScroll = widget.controller.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class TabBarPersistentHeader extends SliverPersistentHeaderDelegate {
  TabBarPersistentHeader({
    required this.tabBar,
  });

  final TabBar tabBar;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: theme.colorScheme.surface,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
