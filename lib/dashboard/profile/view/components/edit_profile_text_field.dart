import 'package:flutter/material.dart';

class EditProfileTextField extends StatelessWidget {
  const EditProfileTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.errorText,
    this.onChanged,
    this.onClear,
    this.isMultiline = false,
  });

  final String hintText;
  final TextEditingController controller;
  final String? errorText;
  final void Function(String value)? onChanged;
  final void Function()? onClear;
  final bool isMultiline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(16),
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            controller.clear();
            onClear?.call();
          },
          icon: const Icon(Icons.clear),
        ),
        errorText: errorText,
      ),
      maxLength: isMultiline ? 80 : 30,
      minLines: isMultiline ? 4 : null,
      maxLines: isMultiline ? 6 : null,
    );
  }
}
