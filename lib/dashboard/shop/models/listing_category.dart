import 'package:formz/formz.dart';

enum ListingCategoryValidationError { empty }

class ListingCategory
    extends FormzInput<String, ListingCategoryValidationError> {
  const ListingCategory.pure(super.value) : super.pure();
  const ListingCategory.dirty([super.value = '']) : super.dirty();

  @override
  ListingCategoryValidationError? validator(String value) {
    return value.isNotEmpty ? null : ListingCategoryValidationError.empty;
  }
}
