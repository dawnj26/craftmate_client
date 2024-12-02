import 'package:craftmate_client/dashboard/bloc/notif_click_bloc.dart' as n;
import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:craftmate_client/dashboard/home/view/screen/notification_screen.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/notifications/bloc/notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key, required this.bloc});

  final NotificationBloc bloc;

  static Route route(NotificationBloc bloc) {
    return PageTransition.effect.slideFromRightToLeft(
      NotificationPage(
        bloc: bloc,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: bloc,
        ),
        BlocProvider(
          create: (context) => n.NotifClickBloc(
            context.read(),
            context.read(),
            context.read(),
          ),
        ),
      ],
      child: BlocListener<n.NotifClickBloc, n.NotifClickState>(
        listener: (context, state) {
          switch (state) {
            case n.Loading() || n.Initial():
              Modal.instance.showLoadingDialog(context);
            case n.ChatClicked(:final user):
              Navigator.pushReplacement(context, ChatScreen.route(user));
          }
        },
        child: const NotificationScreen(),
      ),
    );
  }
}
