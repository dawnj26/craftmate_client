import 'package:flutter/material.dart';

class AscDescButton extends StatelessWidget {
  const AscDescButton({
    super.key,
    this.isAsc = false,
    required this.onOrderChanged,
  });

  final bool isAsc;
  final void Function() onOrderChanged;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onOrderChanged,
      icon: Icon(isAsc ? Icons.arrow_upward : Icons.arrow_downward),
    );
  }
}
