class ProjectException implements Exception {
  final String message;

  const ProjectException({
    required this.message,
  });

  @override
  String toString() {
    return message;
  }
}
