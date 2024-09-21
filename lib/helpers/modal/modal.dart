import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Modal {
  static const instance = Modal();

  const Modal();

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

  Future<bool?> showConfirmationModal({
    required BuildContext context,
    required String message,
    required String title,
    List<Widget>? actions,
    Widget? icon,
  }) async {
    return await showDialog<bool>(
      context: context,
      builder: (_) {
        return AlertDialog(
          icon: icon,
          title: Text(title),
          content: Text(message),
          actions: actions,
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
