import 'package:craftmate_client/dashboard/shop/bloc/listing_category/listing_category_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/view_listing_page.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListingCategoryScreen extends StatelessWidget {
  const ListingCategoryScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: BlocBuilder<ListingCategoryBloc, ListingCategoryState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          if (state.query.isEmpty) {
            return const Center(
              child: Text('No listings found'),
            );
          }

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final product = state.query[index].product;
              return ListingTile(
                product: product,
                onTap: () {
                  Navigator.push(
                    context,
                    ViewListingPage.route(state.query[index].id),
                  );
                },
              );
            },
            itemCount: state.query.length,
          );
        },
      ),
    );
  }
}
