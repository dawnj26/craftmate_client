import 'package:flutter/material.dart';

class Modal {
  static const instance = Modal();

  const Modal();

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return const _NonDismissibleDialog(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      barrierDismissible: false,
    );
  }

  Future<bool> showConfirmationModal({
    required BuildContext context,
    required String message,
    required String title,
    List<Widget>? actions,
  }) async {
    return await showDialog<bool>(
          context: context,
          builder: (_) {
            return _NonDismissibleDialog(
              child: AlertDialog(
                title: Text(title),
                content: Text(message),
                actions: actions,
              ),
            );
          },
        ) ??
        false;
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
