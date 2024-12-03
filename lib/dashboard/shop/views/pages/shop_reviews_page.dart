import 'package:craftmate_client/dashboard/shop/bloc/shop_reviews/shop_reviews_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_reviews_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopReviewsPage extends StatelessWidget {
  const ShopReviewsPage({super.key, required this.userId});

  final int userId;

  static Route<void> route(int userId) {
    return MaterialPageRoute<void>(
      builder: (_) => ShopReviewsPage(
        userId: userId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopReviewsBloc(
        shopRepository: RepositoryProvider.of(context),
      )..add(ShopReviewsEvent.started(userId)),
      child: const ShopReviewsScreen(),
    );
  }
}
