import 'package:craftmate_client/dashboard/shop/bloc/write_review/write_review_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/write_review_screen.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WriteReviewPage extends StatelessWidget {
  const WriteReviewPage({
    super.key,
    required this.listingId,
    required this.sellerId,
  });

  final String listingId;
  final int sellerId;

  static Route route(String listingId, int sellerId) {
    return MaterialPageRoute<void>(
      builder: (_) => WriteReviewPage(
        listingId: listingId,
        sellerId: sellerId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WriteReviewBloc(
        shopRepository: context.read(),
        userRepository: context.read(),
      )..add(WriteReviewEvent.started(listingId, sellerId)),
      child: BlocListener<WriteReviewBloc, WriteReviewState>(
        listener: _handleState,
        child: const WriteReviewScreen(),
      ),
    );
  }

  void _handleState(BuildContext context, WriteReviewState state) {
    switch (state) {
      case Submitting():
        Modal.instance.showLoadingDialog(context);
      case Success():
        Navigator.pop(context);
        Modal.instance.showConfirmationModal(
          context: context,
          content: const Text('Review submitted successfully'),
          title: 'Success',
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text('Ok'),
            ),
          ],
        );
      case Error(:final message):
        Navigator.pop(context);
        Modal.instance.showConfirmationModal(
          context: context,
          content: Text(message),
          title: 'Error',
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Ok'),
            ),
          ],
        );
    }
  }
}
