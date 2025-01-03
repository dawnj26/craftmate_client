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
    final theme = Theme.of(context);

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
                icon: const Icon(Icons.copy_all_outlined),
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
          const Gap(gap),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.commentCount != current.project.commentCount ||
                current is ViewProjectRefreshSuccess,
            builder: (context, state) {
              return Counter(
                countText: '${state.project.viewCount}',
                icon: const Icon(Icons.remove_red_eye_outlined),
              );
            },
          ),
          const Spacer(),
          BlocBuilder<ViewProjectBloc, ViewProjectState>(
            buildWhen: (previous, current) =>
                previous.project.commentCount != current.project.commentCount ||
                current is ViewProjectRefreshSuccess,
            builder: (context, state) {
              final startedAt = state.project.startedAt;
              final completedAt = state.project.completedAt;

              final message = startedAt != null && completedAt != null
                  ? 'Completed'
                  : startedAt != null
                      ? 'Ongoing'
                      : 'Inactive';

              return Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  message,
                  style: theme.textTheme.labelSmall,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
