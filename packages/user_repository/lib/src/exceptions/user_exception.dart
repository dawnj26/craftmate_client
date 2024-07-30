class UserException implements Exception {
  final String message;

  const UserException(this.message);

  @override
  String toString() {
    // TODO: implement toString
    return message;
  }
}
