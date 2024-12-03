import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default(-1) int id,
    @Default('') String name,
    @Default('') String email,
    @Default(0) int followerCount,
    @Default(0) int followingCount,
    @Default(0) int projectCount,
    @Default(false) bool isFollowing,
    @Default('user') String role,
    String? image,
    String? bio,
    DateTime? createdAt,
    DateTime? deletedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
