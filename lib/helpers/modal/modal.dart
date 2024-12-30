import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Modal {
  const Modal();
  static const instance = Modal();

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return const _NonDismissibleDialog(
          child: Center(
            child: LoadingAnimation(color: Colors.white),
          ),
        );
      },
      barrierDismissible: false,
    );
  }

  void showGeneratingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        final theme = Theme.of(context);
        return _NonDismissibleDialog(
          child: AlertDialog(
            title: const Text('Thinking ideas...'),
            content: LoadingAnimationWidget.beat(
              color: theme.colorScheme.primary,
              size: 48,
            ),
          ),
        );
      },
    );
  }

  Future<bool?> showConfirmationModal({
    required BuildContext context,
    required Widget content,
    required String title,
    List<Widget>? actions,
    Widget? icon,
    Key? key,
  }) async {
    return await showDialog<bool>(
      context: context,
      builder: (_) {
        return _AlertDialog(
          key: key,
          icon: icon,
          title: title,
          content: content,
          actions: actions,
        );
      },
    );
  }

  void showSuccessDialog(
    BuildContext context, {
    required String message,
    void Function()? onPressed,
  }) {
    showDialog(
      context: context,
      builder: (_) {
        final theme = Theme.of(context);
        return AlertDialog(
          icon: Icon(
            Icons.check_circle,
            color: theme.colorScheme.primary,
            size: 48,
          ),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onPressed?.call();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showErrorDialog(
    BuildContext context, {
    required String message,
    void Function()? onPressed,
  }) {
    showDialog(
      context: context,
      builder: (_) {
        final theme = Theme.of(context);
        return AlertDialog(
          icon: Icon(
            Icons.error,
            color: theme.colorScheme.error,
            size: 48,
          ),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onPressed?.call();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class _NonDismissibleDialog extends StatelessWidget {
  const _NonDismissibleDialog({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: child,
    );
  }
}

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.stretchedDots(
      color: color,
      size: 48,
    );
  }
}

class _AlertDialog extends StatelessWidget {
  const _AlertDialog({
    super.key,
    this.icon,
    required this.title,
    required this.content,
    required this.actions,
  });

  final Widget? icon;
  final String title;
  final Widget content;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      icon: icon,
      title: Text(title),
      content: content,
      actions: actions,
    );
  }
}
