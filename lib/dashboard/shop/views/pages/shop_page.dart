import 'package:craftmate_client/dashboard/shop/bloc/shop/shop_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopBloc(
        shopRepository: context.read(),
      )..add(const ShopEvent.started()),
      child: const ShopScreen(),
    );
  }
}
