import 'package:formz/formz.dart';

class MaterialName extends FormzInput<String, String> {
  const MaterialName.pure() : super.pure('');
  const MaterialName.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name cannot be empty';
    }
    return null;
  }
}
