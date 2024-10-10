import 'package:craftmate_client/project_management/view_project/view/components/components.dart';
import 'package:flutter/material.dart';
import 'package:project_repository/project_repository.dart';

class Tags extends StatelessWidget {
  const Tags({super.key, required this.tags, required this.padding});

  final List<Tag>? tags;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: tags == null || tags!.isEmpty ? EdgeInsets.zero : padding,
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: tags!.map((e) => CategoryTag(tagText: e.name)).toList(),
      ),
    );
  }
}
