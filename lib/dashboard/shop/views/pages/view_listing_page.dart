import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:shop_repository/shop_repository.dart';

class ViewListingPage extends StatelessWidget {
  const ViewListingPage({super.key, required this.product});

  final Product product;

  static Route<void> route(Product product) {
    return MaterialPageRoute<void>(
      builder: (_) => ViewListingPage(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ViewListingScreen();
  }
}
