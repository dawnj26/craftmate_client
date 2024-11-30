part of 'view_profile_bloc.dart';

@freezed
class ViewProfileEvent with _$ViewProfileEvent {
  const factory ViewProfileEvent.started(int id) = _Started;
  const factory ViewProfileEvent.followToggled() = _FollowToggled;
  const factory ViewProfileEvent.shareProfile() = _ShareProfile;
}
