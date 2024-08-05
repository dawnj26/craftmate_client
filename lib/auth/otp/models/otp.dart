import 'package:formz/formz.dart';

enum OtpValidationError { empty, tooShort }

class Otp extends FormzInput<String, OtpValidationError> {
  const Otp.pure() : super.pure('');

  const Otp.dirty([super.value = '']) : super.dirty();

  @override
  OtpValidationError? validator(String value) {
    if (value.isEmpty) return OtpValidationError.empty;
    if (value.length < 6) return OtpValidationError.tooShort;

    return null;
  }
}
