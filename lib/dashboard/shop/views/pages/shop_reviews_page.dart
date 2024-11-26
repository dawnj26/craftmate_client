import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/shop/bloc/shop_reviews/shop_reviews_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_reviews_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopReviewsPage extends StatelessWidget {
  const ShopReviewsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const ShopReviewsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopReviewsBloc(
        shopRepository: RepositoryProvider.of(context),
      )..add(ShopReviewsEvent.started(context.read<AuthBloc>().state.user.id)),
      child: const ShopReviewsScreen(),
    );
  }
}
