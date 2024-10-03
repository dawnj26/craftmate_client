import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String email,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
// class User {
//   final String id;
//   final String name;
//   final String email;

//   const User({
//     required this.id,
//     required this.name,
//     required this.email,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     if (json['id'] == null || json['name'] == null || json['email'] == null) {
//       throw ArgumentError('Missing required field in JSON');
//     }
//     return User(
//       id: json['id'].toString(),
//       name: json['name'].toString(),
//       email: json['email'].toString(),
//     );
//   }

//   const User.empty() : this(id: '', name: '', email: '');

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'email': email,
//     };
//   }
// }
