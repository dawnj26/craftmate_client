import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/shop/bloc/shop_profile/shop_profile_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopProfilePage extends StatelessWidget {
  const ShopProfilePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const ShopProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopProfileBloc(
        shopRepository: context.read(),
      )..add(ShopProfileEvent.started(context.read<AuthBloc>().state.user.id)),
      child: const ShopProfileScreen(),
    );
  }
}
