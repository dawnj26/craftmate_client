class TokenException implements Exception {
  final String message;

  const TokenException({required this.message});

  @override
  String toString() {
    return this.message;
  }
}
