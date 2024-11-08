import 'package:flutter/material.dart';

class EditProfileAppBar extends StatelessWidget {
  const EditProfileAppBar({
    super.key,
    required this.title,
    this.onSaved,
  });

  final String title;
  final void Function()? onSaved;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leadingWidth: 80,
      leading: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.grey.shade700,
        ),
        child: const Text('Cancel'),
      ),
      title: Text(title),
      actions: [
        TextButton(
          onPressed: onSaved,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
