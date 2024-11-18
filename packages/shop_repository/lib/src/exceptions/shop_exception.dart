class ShopException implements Exception {
  final String message;

  const ShopException(this.message);

  @override
  String toString() {
    return 'ShopException: $message';
  }
}
