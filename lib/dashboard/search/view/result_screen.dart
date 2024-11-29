import 'package:craftmate_client/dashboard/home/view/tabs/trending_tab_page.dart';
import 'package:craftmate_client/dashboard/search/bloc/result/search_result_bloc.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:craftmate_client/user_profile/views/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.query});

  final String query;

  static Route<void> route(String query) {
    return MaterialPageRoute<void>(
      builder: (_) => ResultScreen(query: query),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchResultBloc(
        searchRepository: context.read(),
        projectRepository: context.read(),
      )..add(SearchResultEvent.started(query)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search results for $query'),
        ),
        body: const _ResultList(),
      ),
    );
  }
}

class _ResultList extends StatelessWidget {
  const _ResultList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultBloc, SearchResultState>(
      builder: (context, state) {
        switch (state) {
          case Initial():
          case Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            if (state.projects.isEmpty && state.users.isEmpty) {
              return const EmptyMessage(emptyMessage: 'No results found');
            }

            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final project = state.projects[index];
                      return NumberedProjectCard(
                        project: project,
                        index: index,
                      );
                    },
                    childCount: state.projects.length,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Divider(
                    thickness: 2,
                    height: 24,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final user = state.users[index];
                      return NumberedUserCard(user: user, index: index);
                    },
                    childCount: state.users.length,
                  ),
                ),
              ],
            );
        }
      },
    );
  }
}

class NumberedUserCard extends StatelessWidget {
  const NumberedUserCard({super.key, required this.user, required this.index});

  final User user;
  final int index;

  @override
  Widget build(BuildContext context) {
    final hasProfileImage = user.image != null;

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: hasProfileImage ? NetworkImage(user.image!) : null,
        child: hasProfileImage ? null : Text(user.name[0].toUpperCase()),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
      onTap: () {
        Navigator.push(context, UserProfilePage.route(user.id));
      },
    );
  }
}
