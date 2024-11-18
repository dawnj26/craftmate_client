import 'package:formz/formz.dart';

enum ListingPriceValidationError { empty }

class ListingPrice extends FormzInput<String, ListingPriceValidationError> {
  const ListingPrice.pure({String value = ''}) : super.pure(value);
  const ListingPrice.dirty({String value = ''}) : super.dirty(value);

  @override
  ListingPriceValidationError? validator(String value) {
    return value.isNotEmpty ? null : ListingPriceValidationError.empty;
  }
}
