import 'package:flutter/material.dart';

enum MaterialSort {
  name('Name', Icons.sort_by_alpha),
  quantity('Quantity', Icons.sort),
  lastModified('Last Modified', Icons.calendar_today),
  lastCreated('Last Created', Icons.calendar_today);

  const MaterialSort(this.label, this.icon);
  final String label;
  final IconData icon;
}

extension MaterialSortX on MaterialSort {
  String get value {
    switch (this) {
      case MaterialSort.name:
        return 'name';
      case MaterialSort.quantity:
        return 'quantity';
      case MaterialSort.lastModified:
        return 'updated_at';
      case MaterialSort.lastCreated:
        return 'created_at';
    }
  }
}
