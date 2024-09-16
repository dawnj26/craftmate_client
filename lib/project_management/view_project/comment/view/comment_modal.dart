import 'package:craftmate_client/auth/auth.dart';
import 'package:craftmate_client/project_management/view_project/comment/bloc/comment_bloc.dart';
import 'package:craftmate_client/project_management/view_project/comment/view/components/comments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:project_repository/project_repository.dart';

class CommentModal extends StatefulWidget {
  const CommentModal({
    super.key,
    required this.project,
    required this.screenSize,
    required this.theme,
    this.scrollController,
  });

  final Project project;
  final ScrollController? scrollController;
  final Size screenSize;
  final ThemeData theme;

  @override
  State<CommentModal> createState() => _CommentModalState();
}

class _CommentModalState extends State<CommentModal> {
  final commentFocusNode = FocusNode();
  final commentController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    commentController.dispose();
    commentFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = widget.theme.textTheme;
    final bottomInsets = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
      height: widget.screenSize.height * 0.65,
      child: Column(
        children: [
          Text(
            'Comments',
            style: textTheme.titleMedium,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Comments(
                scrollController: widget.scrollController,
                project: widget.project,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: commentFocusNode.hasFocus && bottomInsets != 0
                  ? bottomInsets
                  : 0,
            ),
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: _CommentField(
              commentController: commentController,
              commentFocusNode: commentFocusNode,
              project: widget.project,
              userInitial:
                  BlocProvider.of<AuthBloc>(context).state.user.name[0],
            ),
          ),
        ],
      ),
    );
  }
}

class _CommentField extends StatelessWidget {
  const _CommentField({
    required this.commentController,
    required this.commentFocusNode,
    required this.project,
    required this.userInitial,
  });

  final TextEditingController commentController;
  final FocusNode commentFocusNode;
  final Project project;
  final String userInitial;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        CircleAvatar(
          backgroundColor: theme.colorScheme.primaryContainer,
          child: Text(
            userInitial.toUpperCase(),
          ),
        ),
        const Gap(8.0),
        Expanded(
          child: BlocBuilder<CommentBloc, CommentState>(
            builder: (context, state) {
              final suffixIcon =
                  _buildSuffixIcon(state is CommentSending, context);

              if (state is CommentSuccess) {
                commentController.text = '';
              }

              return TextField(
                key: const Key('comment_text_field'),
                controller: commentController,
                focusNode: commentFocusNode,
                onSubmitted: (value) => _handleSubmit(value, context),
                onTapOutside: (_) {
                  commentFocusNode.unfocus();
                },
                decoration: InputDecoration(
                  filled: true,
                  label: const Text('Add a comment'),
                  suffixIcon: suffixIcon,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _handleSubmit(String value, BuildContext context) {
    final bloc = BlocProvider.of<CommentBloc>(context);
    if (value.isEmpty) {
      return;
    }

    bloc.add(
      CommentAdded(
        project,
        value,
      ),
    );
    _resetCommentField();
  }

  void _resetCommentField() {
    commentController.text = '';
    commentFocusNode.unfocus();
  }

  Widget _buildSuffixIcon(bool isLoading, BuildContext context) {
    final theme = Theme.of(context);
    final bloc = BlocProvider.of<CommentBloc>(context);

    if (isLoading) {
      return const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularProgressIndicator(),
      );
    }

    return IconButton(
      onPressed: () {
        if (commentController.text.isEmpty) {
          return;
        }

        bloc.add(
          CommentAdded(
            project,
            commentController.text,
          ),
        );
        _resetCommentField();
      },
      icon: Icon(
        Icons.send_rounded,
        color: theme.colorScheme.primary,
      ),
    );
  }
}
