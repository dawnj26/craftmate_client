import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/shop/bloc/shop_result/shop_result_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_screen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopResultsScreen extends StatelessWidget {
  const ShopResultsScreen({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results for "$query"'),
      ),
      body: BlocBuilder<ShopResultBloc, ShopResultState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      CategoryFilter(
                        selectedCategory: state.selectedCategory,
                        categories: state.categories,
                        onSelected: (category) =>
                            context.read<ShopResultBloc>().add(
                                  ShopResultEvent.categorySelected(category),
                                ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverLabel(
                labelText: "Nearby",
                currentLocation: state.currentLocation,
                onLocationChanged: (place, radius) {
                  logger.info('Place: $place, Radius: $radius');
                  context.read<ShopResultBloc>().add(
                        ShopResultEvent.locationSelected(place, radius / 1000),
                      );
                },
              ),
              ListingGrid(query: state.nearbyProducts),
              const SliverLabel(
                labelText: "All Listings",
              ),
              ListingGrid(
                query: state.filteredProducts,
              ),
            ],
          );
        },
      ),
    );
  }
}
