import 'package:craftmate_client/dashboard/search/bloc/search/search_bloc.dart';
import 'package:craftmate_client/dashboard/search/view/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(
        projectRepository: context.read(),
      )..add(const SearchEvent.started()),
      child: const SearchScreen(),
    );
  }
}
