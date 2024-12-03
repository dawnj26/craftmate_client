import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/components/category_filter.dart';
import 'package:craftmate_client/dashboard/shop/bloc/user_listing/user_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/view_listing_page.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_screen.dart';
import 'package:craftmate_client/helpers/components/empty_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListingGrid extends StatelessWidget {
  const UserListingGrid({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserListingBloc(
        shopRepository: context.read(),
        projectRepository: context.read(),
      )..add(UserListingEvent.started(userId)),
      child: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserListingBloc, UserListingState>(
      builder: (context, state) {
        switch (state) {
          case Initial() || Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
        }

        if (state.filteredQuery.isEmpty) {
          return const EmptyMessage(emptyMessage: 'No listings found');
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
    );
  }
}
