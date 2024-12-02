class NotificationException implements Exception {
  final String message;

  const NotificationException({required this.message});

  @override
  String toString() {
    return 'NotificationException: $message';
  }
}
