import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { empty, invalid }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String? value) {
    if (EmailValidator.validate(value ?? '')) {
      return null;
    } else {
      return value?.isNotEmpty == true
          ? EmailValidationError.invalid
          : EmailValidationError.empty;
    }
  }
}
