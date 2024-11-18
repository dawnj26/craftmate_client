import 'package:formz/formz.dart';

enum ListingTitleValidationError { empty }

class ListingTitle extends FormzInput<String, ListingTitleValidationError> {
  const ListingTitle.pure({String value = ''}) : super.pure(value);
  const ListingTitle.dirty({String value = ''}) : super.dirty(value);

  @override
  ListingTitleValidationError? validator(String value) {
    return value.isNotEmpty ? null : ListingTitleValidationError.empty;
  }
}
