import 'package:craftmate_client/auth/signup/view/components/label_divide.dart';
import 'package:flutter/material.dart';

class DocumentSection extends StatelessWidget {
  const DocumentSection({
    required this.labelText,
    required this.children,
  });

  final String labelText;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelDivide(labelText: labelText),
        const SizedBox(height: 12.0),
        ...children,
      ],
    );
  }
}
