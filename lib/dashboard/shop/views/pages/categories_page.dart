import 'package:craftmate_client/dashboard/shop/bloc/shop_categories/shop_categories_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CategoriesPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopCategoriesBloc(
        projectRepository: context.read(),
      )..add(const ShopCategoriesEvent.started()),
      child: const CategoriesScreen(),
    );
  }
}
