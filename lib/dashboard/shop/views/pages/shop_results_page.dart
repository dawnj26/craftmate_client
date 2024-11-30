import 'package:craftmate_client/dashboard/shop/bloc/shop_result/shop_result_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_results_screen.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopResultsPage extends StatelessWidget {
  const ShopResultsPage({super.key, required this.query});

  final String query;

  static Route route(String query) {
    return PageTransition.effect
        .slideFromRightToLeft(ShopResultsPage(query: query));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopResultBloc(
        context.read(),
        context.read(),
        context.read(),
      )..add(ShopResultEvent.started(query)),
      child: ShopResultsScreen(
        query: query,
      ),
    );
  }
}
