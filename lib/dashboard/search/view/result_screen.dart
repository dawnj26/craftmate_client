import 'package:craftmate_client/dashboard/home/view/tabs/trending_tab_page.dart';
import 'package:craftmate_client/dashboard/search/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      create: (context) => SearchBloc(
        searchRepository: context.read(),
      )..add(SearchEvent.started(query)),
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
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        switch (state) {
          case Initial():
          case Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            return ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: state.projects.length,
              itemBuilder: (context, index) {
                final project = state.projects[index];

                return NumberedProjectCard(project: project, index: index);
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 0,
                );
              },
            );
        }
      },
    );
  }
}
