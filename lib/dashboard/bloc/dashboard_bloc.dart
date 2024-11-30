import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc({
    required AppLinks appLinks,
  }) : super(const Initial()) {
    _appLinksSubscription = appLinks.uriLinkStream.listen((uri) {
      add(DashboardEvent.uriReceived(uri));
    });

    on<_UriReceived>(_onUriReceived);
  }

  late final StreamSubscription<Uri> _appLinksSubscription;

  @override
  Future<void> close() {
    // TODO: implement close
    _appLinksSubscription.cancel();
    return super.close();
  }

  void _onUriReceived(_UriReceived event, Emitter<DashboardState> emit) {
    if (event.uri.pathSegments.contains('project')) {
      final projectId = int.tryParse(event.uri.pathSegments.last);
      if (projectId != null) {
        emit(
          DashboardState.projectReceived(
            uuid: const Uuid().v4(),
            id: projectId,
          ),
        );
      }
    } else if (event.uri.pathSegments.contains('shop')) {
      final shopId = event.uri.pathSegments.last;

      emit(
        DashboardState.shopReceived(
          uuid: const Uuid().v4(),
          id: shopId,
        ),
      );
    } else if (event.uri.pathSegments.contains('user')) {
      final userId = int.tryParse(event.uri.pathSegments.last);

      if (userId != null) {
        emit(
          DashboardState.userReceived(
            uuid: const Uuid().v4(),
            id: userId,
          ),
        );
      }
    }
  }
}
