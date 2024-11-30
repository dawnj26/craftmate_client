import 'package:craftmate_client/dashboard/shop/bloc/shop_search/shop_search_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopSearchPage extends StatelessWidget {
  const ShopSearchPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const ShopSearchPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopSearchBloc(
        context.read(),
      ),
      child: const ShopSearchScreen(),
    );
  }
}
