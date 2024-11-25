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
        title: const Text('User Listing'),
      ),
      body: BlocBuilder<UserListingBloc, UserListingState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8,
              childAspectRatio: 0.9,
            ),
            itemCount: state.query.length,
            itemBuilder: (context, index) {
              final item = state.query[index];

              return ListingTile(
                product: item.product,
                onTap: () {
                  Navigator.of(context).push(ViewListingPage.route(item));
                },
              );
            },
          );
        },
      ),
    );
  }
}
