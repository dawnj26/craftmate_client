import 'package:formz/formz.dart';

enum ProjectTitleValidationError { empty }

class ProjectTitle extends FormzInput<String, ProjectTitleValidationError> {
  const ProjectTitle.pure() : super.pure('');
  const ProjectTitle.dirty([super.value = '']) : super.dirty();

  @override
  ProjectTitleValidationError? validator(String value) {
    // TODO: implement validator
    if (value.isEmpty) {
      return ProjectTitleValidationError.empty;
    }

    return null;
  }
}
