class ReportException implements Exception {
  final String message;

  const ReportException(this.message);

  @override
  String toString() {
    return 'ReportException: $message';
  }
}
