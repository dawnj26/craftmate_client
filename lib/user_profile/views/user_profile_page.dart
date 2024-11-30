import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/user_profile/bloc/view_profile/view_profile_bloc.dart';
import 'package:craftmate_client/user_profile/views/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key, required this.id});

  final int id;

  static Route<void> route(int userId) {
    return MaterialPageRoute(
      builder: (context) => UserProfilePage(
        id: userId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewProfileBloc(
        userRepository: context.read(),
      )..add(
          ViewProfileEvent.started(id),
        ),
      child: BlocListener<ViewProfileBloc, ViewProfileState>(
        listener: (context, state) {
          switch (state) {
            case Error(:final message):
              Alert.instance.showSnackbar(context, message);
            case Sharing():
              Modal.instance.showLoadingDialog(context);
            case Shared():
              Navigator.of(context).pop();
              Alert.instance.showSnackbar(
                context,
                'Profile share link copied to clipboard',
              );
          }
        },
        child: const UserProfileScreen(),
      ),
    );
  }
}
