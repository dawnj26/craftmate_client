import 'package:flutter/material.dart';

enum ProjectFilter {
  all('All'),
  public('Public'),
  private('Private'),
  followers('Followers');

  const ProjectFilter(this.label);
  final String label;
}

enum ProjectSort {
  title('Title', Icons.sort_by_alpha),
  lastModified('Last modified', Icons.calendar_today),
  lastCreated('Last created', Icons.calendar_today),
  likes('Likes', Icons.favorite_outline_rounded),
  comments('Comments', Icons.comment_outlined),
  ;

  const ProjectSort(this.label, this.icon);
  final String label;
  final IconData icon;
}

extension ProjectSortExtension on ProjectSort {
  String get value {
    switch (this) {
      case ProjectSort.title:
        return 'title';
      case ProjectSort.lastModified:
        return 'updated_at';
      case ProjectSort.lastCreated:
        return 'created_at';
      case ProjectSort.likes:
        return 'like_count';
      case ProjectSort.comments:
        return 'comment_count';
    }
  }
}
