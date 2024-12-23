part of 'notif_click_bloc.dart';

@freezed
class NotifClickState with _$NotifClickState {
  const factory NotifClickState.initial() = Initial;
  const factory NotifClickState.loading() = Loading;
  const factory NotifClickState.chatClicked({
    required String uuid,
    required CNotification notification,
    required User user,
    QueryProduct? queryProduct,
  }) = ChatClicked;

  const factory NotifClickState.projectClicked({
    required String uuid,
    required CNotification notification,
    required int projectId,
  }) = ProjectClicked;

  const factory NotifClickState.error({
    required String error,
  }) = Error;
}
