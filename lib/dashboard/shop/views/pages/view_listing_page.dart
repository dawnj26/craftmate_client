import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:craftmate_client/dashboard/shop/bloc/view_listing/view_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewListingPage extends StatelessWidget {
  const ViewListingPage({super.key, required this.listingId});

  final String listingId;

  static Route<void> route(String listingId) {
    return MaterialPageRoute<void>(
      builder: (_) => ViewListingPage(listingId: listingId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewListingBloc(
        shopRepository: context.read(),
        userRepository: context.read(),
        chatRepository: context.read(),
      )..add(ViewListingEvent.started(listingId)),
      child: BlocListener<ViewListingBloc, ViewListingState>(
        listener: (context, state) {
          switch (state) {
            case Error(:final errMessage):
              Alert.instance.showSnackbar(context, errMessage);
            case Deleting():
            case Sending():
              Modal.instance.showLoadingDialog(context);
            case Deleted():
              Navigator.of(context).pop();
              Navigator.of(context).pop();
              Alert.instance.showSnackbar(context, 'Listing deleted');

            case Sent(:final seller, :final query):
              final curUser = context.read<AuthBloc>().state.user;

              Navigator.of(context).pushReplacement(
                ChatScreen.route(
                  seller,
                  listingId: query.id,
                  title: '${curUser.name} - ${query.product.name}',
                  imageUrl: query.product.imageUrls.first,
                  sellerId: seller.id,
                ),
              );
            case Shared():
              Navigator.of(context).pop();
              Alert.instance.showSnackbar(
                context,
                'Listing share link copied to clipboard',
              );
          }
        },
        child: const ViewListingScreen(),
      ),
    );
  }
}
