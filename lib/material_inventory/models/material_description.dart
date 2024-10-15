import 'package:formz/formz.dart';

class MaterialDescription extends FormzInput<String, String> {
  const MaterialDescription.pure() : super.pure('');
  const MaterialDescription.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Description cannot be empty';
    }
    return null;
  }
}
