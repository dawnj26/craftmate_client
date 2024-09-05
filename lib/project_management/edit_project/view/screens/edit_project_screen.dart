import 'package:flutter/material.dart';

class EditProjectScreen extends StatelessWidget {
  const EditProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit project'),
      ),
      body: const EditProjectBody(),
    );
  }
}

class EditProjectBody extends StatelessWidget {
  const EditProjectBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            'Description',
            style: textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
