import 'package:flutter/material.dart';

/// `InputField` is a stateless widget that creates a text form field.
///
/// It takes in a label, a validator function, and an optional boolean to determine if the field is a password field.
///
/// The `label` is used as the labelText for the `InputDecoration` of the `TextFormField`.
///
/// The `validator` is a function that takes in a string and returns a string. It's used to validate the input of the `TextFormField`.
///
/// If `isPassword` is true, the `TextFormField` obscures the text input. This is useful for password fields.
class InputField extends StatelessWidget {
  /// Creates an instance of `InputField`.
  const InputField({
    required this.label,
    required this.validator,
    required this.icon,
    this.isPassword = false,
    super.key,
  });

  /// Icon for the `InputDecoration` of the `TextFormField`.
  final Icon icon;

  /// The label text for the `InputDecoration` of the `TextFormField`.
  final String label;

  /// Determines if the `TextFormField` should obscure the text input.
  final bool isPassword;

  /// The validator function for the `TextFormField`.
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        prefixIcon: icon,
      ),
      validator: validator,
    );
  }
}
