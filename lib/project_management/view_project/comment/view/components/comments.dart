import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/view_project/comment/bloc/comment_bloc.dart';
import 'package:craftmate_client/project_management/view_project/comment/view/components/comment_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class Comments extends StatelessWidget {
  const Comments({
    super.key,
    required this.scrollController,
    required this.project,
  });

  final ScrollController? scrollController;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentBloc, CommentState>(
      // buildWhen: (previous, current) => previous.comments != current.comments,
      builder: (context, state) {
        final bloc = BlocProvider.of<CommentBloc>(context);
        if (state is CommentInitial) {
          bloc.add(CommentLoad(project));
        }

        final color = Theme.of(context).colorScheme.primary;

        if (state is CommentsLoading || state is CommentInitial) {
          return Center(
            child: LoadingAnimation(color: color),
          );
        } else if (state is CommentError) {
          return Center(
            child: Text(state.message),
          );
        }

        final comments = state.comments;

        if (comments.isEmpty) {
          return const Center(
            child: Text('No comments'),
          );
        }

        return ListView.builder(
          controller: scrollController,
          itemCount: comments.length,
          itemBuilder: (context, index) {
            final comment = comments[index];
            return CommentBlock(
              comment: comment,
              commentIndex: index,
              onLikeCallback: () {
                bloc.add(CommentLiked(comment, project.id));
              },
            );
          },
        );
      },
    );
  }
}
