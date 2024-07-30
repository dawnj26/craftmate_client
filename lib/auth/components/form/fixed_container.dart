import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FixedContainer extends StatelessWidget {
  const FixedContainer({super.key, required this.child, this.padding = EdgeInsets.zero, this.safePadding = 0.0,});

  final Widget child;
  final EdgeInsetsGeometry padding;
  final double safePadding;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      // physics: const NeverScrollableScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: screenSize.height - safePadding,
          minWidth: screenSize.width,
        ),
        child: IntrinsicHeight(
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
