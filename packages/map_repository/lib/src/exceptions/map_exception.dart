class MapException implements Exception {
  final String message;
  MapException(this.message);

  @override
  String toString() => message;
}
