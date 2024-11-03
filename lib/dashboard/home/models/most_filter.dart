enum MostFilter {
  views('Most Views'),
  likes('Most Likes'),
  comments('Most Comments'),
  ;

  const MostFilter(this.label);
  final String label;
}

extension MostFilterExtension on MostFilter {
  String get value {
    switch (this) {
      case MostFilter.views:
        return 'views_count';
      case MostFilter.likes:
        return 'likes_count';
      case MostFilter.comments:
        return 'comments_count';
    }
  }
}
