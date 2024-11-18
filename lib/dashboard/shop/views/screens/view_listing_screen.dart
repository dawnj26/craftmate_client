import 'package:flutter/material.dart';

class ViewListingScreen extends StatelessWidget {
  const ViewListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Listing'),
      ),
      body: const Center(
        child: Text('View Listing'),
      ),
    );
  }
}
