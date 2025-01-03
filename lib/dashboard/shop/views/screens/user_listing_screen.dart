import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/shop/bloc/user_listing/user_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/view_listing_page.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListingScreen extends StatelessWidget {
  const UserListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Listings'),
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
      body: BlocBuilder<UserListingBloc, UserListingState>(
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
                    context.read<UserListingBloc>().add(
                          UserListingEvent.categorySelected(category),
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
                            .push(ViewListingPage.route(item.id))
                            .then((value) {
                          if (!context.mounted) return;
                          context.read<UserListingBloc>().add(
                                UserListingEvent.started(
                                  context.read<AuthBloc>().state.user.id,
                                ),
                              );
                        });
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
