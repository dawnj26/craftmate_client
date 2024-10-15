import 'package:formz/formz.dart';

class MaterialCategoryDropdown extends FormzInput<int, String> {
  const MaterialCategoryDropdown.pure() : super.pure(0);
  const MaterialCategoryDropdown.dirty([super.value = 0]) : super.dirty();

  @override
  String? validator(int? value) {
    return value == 0 ? 'Please select a category' : null;
  }
}
