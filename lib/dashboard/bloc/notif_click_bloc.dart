import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notification_repository/notification_repository.dart';
import 'package:project_repository/project_repository.dart';
import 'package:user_repository/user_repository.dart';
import 'package:uuid/uuid.dart';

part 'notif_click_event.dart';
part 'notif_click_state.dart';
part 'notif_click_bloc.freezed.dart';

class NotifClickBloc extends Bloc<NotifClickEvent, NotifClickState> {
  NotifClickBloc(
    this._notificationRepository,
    this._userRepository,
    this._projectRepository,
  ) : super(const Initial()) {
    on<_NotificationClicked>(_onNotificationClicked);
  }

  final NotificationRepository _notificationRepository;
  final UserRepository _userRepository;
  final ProjectRepository _projectRepository;

  Future<void> _onNotificationClicked(
    _NotificationClicked event,
    Emitter<NotifClickState> emit,
  ) async {
    emit(const Loading());
    try {
      switch (event.notification.type) {
        case 'chat':
          final userId = event.notification.data['senderId'] as int?;

          if (userId == null) {
            emit(const Error(error: 'Failed to load notification'));
            return;
          }
          final user = await _userRepository.getUserById(userId);
          emit(
            ChatClicked(
              uuid: const Uuid().v4(),
              notification: event.notification,
              user: user,
            ),
          );
      }
    } catch (e) {
      emit(const Error(error: 'Failed to load notification'));
    }
  }
}
