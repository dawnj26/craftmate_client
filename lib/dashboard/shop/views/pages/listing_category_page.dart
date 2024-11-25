import 'package:craftmate_client/dashboard/shop/bloc/listing_category/listing_category_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/listing_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListingCategoryPage extends StatelessWidget {
  const ListingCategoryPage({super.key, required this.category});

  final String category;

  static Route route({required String category}) {
    return MaterialPageRoute<void>(
      builder: (_) => ListingCategoryPage(
        category: category,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListingCategoryBloc(
        shopRepo: context.read(),
      )..add(ListingCategoryEvent.started(category)),
      child: ListingCategoryScreen(
        category: category,
      ),
    );
  }
}
