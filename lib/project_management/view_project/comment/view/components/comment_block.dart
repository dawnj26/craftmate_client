import 'package:craftmate_client/auth/auth.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_repository/project_repository.dart';

class CommentBlock extends StatelessWidget {
  const CommentBlock({
    super.key,
    required this.comment,
    this.onLikeCallback,
    required this.commentIndex,
  });

  final Comment comment;
  final void Function()? onLikeCallback;
  final int commentIndex;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const middleGap = 8.0;
    final currentUser = BlocProvider.of<AuthBloc>(context).state.user;

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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: middleGap + 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comment.user.id == currentUser.id
                            ? 'You'
                            : comment.user.name,
                        style: textTheme.titleSmall,
                      ),
                      Text(
                        comment.content,
                        style: textTheme.bodyLarge,
                      ),
                    ],
                  ),
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
                        onPressed: () {},
                        child: const Text('Reply'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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