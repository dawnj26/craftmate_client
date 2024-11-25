import 'package:craftmate_client/dashboard/shop/views/screens/shop_profile_screen.dart';
import 'package:flutter/material.dart';

class ShopProfilePage extends StatelessWidget {
  const ShopProfilePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const ShopProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const ShopProfileScreen();
  }
}
