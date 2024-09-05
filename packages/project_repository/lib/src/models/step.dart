class Step {
  final int id;
  final int stepNumber;
  final List<dynamic>? content;
  final List<Step>? substeps;

  const Step({
    required this.id,
    required this.stepNumber,
    this.content,
    this.substeps,
  });

  factory Step.fromJson(Map<String, dynamic> json) {
    return Step(
      id: json['id'] as int,
      stepNumber: json['step_number'] as int,
      content: json['content'] as List<dynamic>?,
      substeps: (json['children'] as List<dynamic>?)
          ?.map(
            (e) => Step(
              id: e['id'] as int,
              stepNumber: e['step_number'] as int,
              content: e['content'] as List<dynamic>?,
            ),
          )
          .toList(),
    );
  }

  Step copyWith({
    int? id,
    int? stepNumber,
    List<dynamic>? content,
    List<Step>? substeps,
  }) {
    return Step(
      id: id ?? this.id,
      stepNumber: stepNumber ?? this.stepNumber,
      content: content ?? this.content,
      substeps: substeps ?? this.substeps,
    );
  }
}
