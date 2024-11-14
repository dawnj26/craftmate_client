import 'package:craftmate_client/dashboard/shop/views/screens/add_address_screen.dart';
import 'package:flutter/material.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const AddAddressPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AddAddressScreen();
  }
}
