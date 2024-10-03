import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    required final int id,
    required final String name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, Object?> json) => _$TagFromJson(json);
}




// class Tag {
//   final int id;
//   final String name;

//   const Tag({
//     required this.id,
//     required this.name,
//   });

//   factory Tag.fromJson(Map<String, dynamic> json) {
//     return Tag(
//       id: json['id'] as int,
//       name: json['name'] as String,
//     );
//   }
// }
