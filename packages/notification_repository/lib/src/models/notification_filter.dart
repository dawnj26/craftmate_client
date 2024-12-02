enum NotificationDateFilter {
  all,
  today,
  lastWeek,
  lastMonth;

  DateTime? get startDate {
    final now = DateTime.now();
    switch (this) {
      case NotificationDateFilter.today:
        return DateTime(now.year, now.month, now.day);
      case NotificationDateFilter.lastWeek:
        return now.subtract(const Duration(days: 7));
      case NotificationDateFilter.lastMonth:
        return now.subtract(const Duration(days: 30));
      case NotificationDateFilter.all:
        return null;
    }
  }
}
