import 'package:craftmate_client/dashboard/profile/bloc/user_profile_bloc.dart';
import 'package:craftmate_client/dashboard/profile/view/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserProfileBloc(
        userRepository: RepositoryProvider.of(context),
      )..add(
          const UserProfileEvent.loadedProfile(),
        ),
      child: const ProfileScreen(),
    );
  }
}
