import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/project_management/view_project/comment/bloc/comment_bloc.dart';
import 'package:craftmate_client/project_management/view_project/comment/view/components/comment_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class CommentReplies extends StatelessWidget {
  const CommentReplies({
    super.key,
    required this.replies,
    required this.project,
  });

  final List<Comment> replies;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(replies.length, (index) {
        final reply = replies[index];
        final bloc = BlocProvider.of<CommentBloc>(context);

        return CommentBlock(
          project: project,
          comment: reply,
          commentIndex: index,
          onReplyCallback: () {
            bloc.add(CommentClickedReply(project, reply));
          },
          onLikeCallback: () {
            bloc.add(CommentLiked(reply, project.id));
          },
          onDeleteCallback: () {
            bloc.add(CommentDeleted(reply, project));
          },
        );
      }),
    );
  }
}
