import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/bloc/notif_click_bloc.dart' as n;
import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:craftmate_client/dashboard/home/view/screen/notification_screen.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/notifications/bloc/notification_bloc.dart';
import 'package:craftmate_client/project_management/view_project/view/view_project_page.dart';
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
    final curUser = context.read<AuthBloc>().state.user;

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
            case n.ChatClicked(:final user, :final queryProduct):
              if (queryProduct != null) {
                final ownedByCurUser =
                    queryProduct.product.sellerId == curUser.id;

                final chatTitle =
                    '${ownedByCurUser ? user.name : curUser.name} - ${queryProduct.product.name}';

                Navigator.of(context).pushReplacement(
                  ChatScreen.route(
                    user,
                    curUser,
                    listingId: queryProduct.id,
                    title: chatTitle,
                    sellerId: queryProduct.product.sellerId,
                  ),
                );
              } else {
                Navigator.of(context).pushReplacement(
                  ChatScreen.route(
                    user,
                    curUser,
                  ),
                );
              }
            case n.ProjectClicked(:final projectId):
              Navigator.of(context).pushReplacement(
                ViewProjectPage.route(
                  projectId,
                ),
              );
          }
        },
        child: const NotificationScreen(),
      ),
    );
  }
}
