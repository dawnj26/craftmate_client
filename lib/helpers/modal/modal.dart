import 'package:flutter/material.dart';

class Modal {
  static const instance = Modal();

  const Modal();

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return const _NonDismissibleLoadingDialog();
      },
      barrierDismissible: false,
    );
  }
}

class _NonDismissibleLoadingDialog extends StatelessWidget {
  const _NonDismissibleLoadingDialog();

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
