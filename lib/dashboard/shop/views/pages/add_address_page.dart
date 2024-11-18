import 'package:craftmate_client/dashboard/shop/views/screens/add_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:map_repository/map_repository.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({super.key, this.onAddressSelected});

  final void Function(Place place)? onAddressSelected;

  static Route<void> route({
    void Function(Place place)? onAddressSelected,
  }) {
    return MaterialPageRoute<void>(
      builder: (_) => AddAddressPage(
        onAddressSelected: onAddressSelected,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AddAddressScreen(
      onAddressSelected: onAddressSelected,
    );
  }
}
