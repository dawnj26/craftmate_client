enum SortOrder { asc, desc }

extension SortOrderX on SortOrder {
  String get value {
    switch (this) {
      case SortOrder.asc:
        return 'asc';
      case SortOrder.desc:
        return 'desc';
    }
  }
}
