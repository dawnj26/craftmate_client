class MaterialException implements Exception {
  MaterialException({required this.message});
  final String message;

  @override
  String toString() {
    return message;
  }
}