import 'package:craftmate_client/dashboard/shop/views/screens/add_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:map_repository/map_repository.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({
    super.key,
    this.onAddressSelected,
    this.showCircle = false,
  });

  final void Function(Place place, double radius)? onAddressSelected;
  final bool showCircle;

  static Route<void> route({
    void Function(Place place, double radius)? onAddressSelected,
    bool showCircle = false,
  }) {
    return MaterialPageRoute<void>(
      builder: (_) => AddAddressPage(
        onAddressSelected: onAddressSelected,
        showCircle: showCircle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AddAddressScreen(
      onAddressSelected: onAddressSelected,
      showCircle: showCircle,
    );
  }
}
