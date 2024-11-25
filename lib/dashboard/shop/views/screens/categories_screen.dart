import 'package:craftmate_client/dashboard/shop/bloc/shop_categories/shop_categories_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/listing_category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: BlocBuilder<ShopCategoriesBloc, ShopCategoriesState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return ListView.builder(
            itemCount: state.categories.length,
            itemBuilder: (context, index) {
              final category = state.categories[index];
              return ListTile(
                title: Text(category.name),
                onTap: () {
                  Navigator.of(context)
                      .push(ListingCategoryPage.route(category: category.name));
                },
              );
            },
          );
        },
      ),
    );
  }
}
