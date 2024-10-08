class InternetException implements Exception {
  final String message;

  const InternetException(this.message);

  @override
  String toString() {
    return 'InternetException: $message';
  }
}
