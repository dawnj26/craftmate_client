enum NotificationDateFilter {
  all,
  today,
  lastWeek,
  lastMonth;

  String get label {
    switch (this) {
      case NotificationDateFilter.all:
        return 'All';
      case NotificationDateFilter.today:
        return 'Today';
      case NotificationDateFilter.lastWeek:
        return 'Last 7 days';
      case NotificationDateFilter.lastMonth:
        return 'Last 30 days';
    }
  }

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
