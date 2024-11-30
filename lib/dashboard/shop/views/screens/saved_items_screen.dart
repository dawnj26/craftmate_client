import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/shop/bloc/saved_listing/saved_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/view_listing_page.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_screen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedItemsScreen extends StatelessWidget {
  const SavedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Items'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: const Text('Sort by'),
                  onTap: () {
                    _handleSort(context);
                  },
                ),
              ];
            },
          ),
        ],
      ),
      body: BlocBuilder<SavedListingBloc, SavedListingState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CategoryFilter(
                  selectedCategory: state.selectedCategory,
                  categories: state.categories,
                  onSelected: (category) {
                    logger.info('Category selected: $category');
                    context.read<SavedListingBloc>().add(
                          SavedListingEvent.categorySelected(category),
                        );
                  },
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: state.filteredQuery.length,
                  itemBuilder: (context, index) {
                    final item = state.filteredQuery[index];

                    return ListingTile(
                      product: item.product,
                      onTap: () {
                        Navigator.of(context)
                            .push(ViewListingPage.route(item.id));
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _handleCategory(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('All'),
              onTap: () {
                // context.read<UserListingBloc>().add(
                //       UserListingEvent.filterByCategory(null),
                //     );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Category 1'),
              onTap: () {
                // context.read<UserListingBloc>().add(
                //       UserListingEvent.filterByCategory('Category 1'),
                //     );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Category 2'),
              onTap: () {
                // context.read<UserListingBloc>().add(
                //       UserListingEvent.filterByCategory('Category 2'),
                //     );
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _handleSort(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Price'),
              onTap: () {
                // context.read<UserListingBloc>().add(
                //       UserListingEvent.sortByPrice(),
                //     );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Date'),
              onTap: () {
                // context.read<UserListingBloc>().add(
                //       UserListingEvent.sortByDate(),
                //     );
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
