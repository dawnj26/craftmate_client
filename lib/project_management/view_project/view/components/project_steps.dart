import 'package:craftmate_client/project_management/edit_project/view/edit_project_page.dart';
import 'package:craftmate_client/project_management/view_project/view/screen/view_project_screen.dart';
import 'package:flutter/material.dart';

class ProjectSteps extends StatelessWidget {
  const ProjectSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProjectBodySection(
          sectionName: 'Steps',
          type: EditProjectType.steps,
        ),
      ],
    );
  }
}
