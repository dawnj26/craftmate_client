import 'package:craftmate_client/project_management/view_project/bloc/view_project_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

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
                previous.project.likeCount != current.project.likeCount ||
                current is ViewProjectRefreshSuccess,
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
                previous.project.forkCount != current.project.forkCount ||
                current is ViewProjectRefreshSuccess,
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
                previous.project.commentCount != current.project.commentCount ||
                current is ViewProjectRefreshSuccess,
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
