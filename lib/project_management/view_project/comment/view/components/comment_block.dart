import 'package:craftmate_client/auth/auth.dart';
import 'package:craftmate_client/project_management/view_project/comment/view/components/comment_replies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';
import 'package:user_repository/user_repository.dart';

class CommentBlock extends StatelessWidget {
  const CommentBlock({
    super.key,
    required this.comment,
    required this.project,
    this.onLikeCallback,
    required this.commentIndex,
    this.onReplyCallback,
    this.onDeleteCallback,
  });

  final Project project;
  final Comment comment;
  final void Function()? onLikeCallback;
  final void Function()? onReplyCallback;
  final void Function()? onDeleteCallback;

  final int commentIndex;

  @override
  Widget build(BuildContext context) {
    return _buildCommentBlock(context);
  }

  Widget _buildCommentBlock(BuildContext context) {
    final theme = Theme.of(context);
    const middleGap = 8.0;
    final currentUser = BlocProvider.of<AuthBloc>(context).state.user;
    if (comment.user.id != currentUser.id) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: theme.colorScheme.primaryContainer,
              child: Text(comment.user.name[0].toUpperCase()),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserAndComment(
                    middleGap: middleGap,
                    comment: comment,
                    currentUser: currentUser,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: middleGap),
                    child: Row(
                      children: [
                        LikeButton(
                          likeCount: comment.likeCount,
                          onLikeCallback: onLikeCallback,
                          icon: Icon(
                            comment.isLiked
                                ? Icons.thumb_up_alt
                                : Icons.thumb_up_alt_outlined,
                          ),
                        ),
                        TextButton(
                          onPressed: onReplyCallback,
                          child: const Text('Reply'),
                        ),
                      ],
                    ),
                  ),
                  CommentReplies(
                    project: project,
                    replies: comment.children,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: theme.colorScheme.primaryContainer,
                child: Text(comment.user.name[0].toUpperCase()),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserAndComment(
                      middleGap: middleGap,
                      comment: comment,
                      currentUser: currentUser,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: middleGap),
                      child: Row(
                        children: [
                          LikeButton(
                            likeCount: comment.likeCount,
                            onLikeCallback: onLikeCallback,
                            icon: Icon(
                              comment.isLiked
                                  ? Icons.thumb_up_alt
                                  : Icons.thumb_up_alt_outlined,
                            ),
                          ),
                          TextButton(
                            onPressed: onReplyCallback,
                            child: const Text('Reply'),
                          ),
                        ],
                      ),
                    ),
                    CommentReplies(
                      project: project,
                      replies: comment.children,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (comment.user.id == currentUser.id)
          Align(
            alignment: Alignment.topRight,
            child: PopupMenuButton(
              position: PopupMenuPosition.under,
              iconSize: 22.0,
              padding: EdgeInsets.zero,
              itemBuilder: (_) => [
                PopupMenuItem(
                  onTap: onDeleteCallback,
                  child: const Text('Delete'),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class UserAndComment extends StatelessWidget {
  const UserAndComment({
    super.key,
    required this.middleGap,
    required this.comment,
    required this.currentUser,
  });

  final double middleGap;
  final Comment comment;
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: middleGap + 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            comment.user.id == currentUser.id ? 'You' : comment.user.name,
            style: textTheme.titleSmall,
          ),
          const Gap(4.0),
          Text(
            comment.content,
            style: textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class LikeButton extends StatelessWidget {
  const LikeButton({
    super.key,
    required this.likeCount,
    this.onLikeCallback,
    required this.icon,
  });

  final int likeCount;
  final void Function()? onLikeCallback;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onLikeCallback,
          icon: icon,
        ),
        Text('$likeCount'),
      ],
    );
  }
}
