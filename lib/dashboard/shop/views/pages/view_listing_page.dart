import 'package:craftmate_client/dashboard/chats/views/screens/chat_screen.dart';
import 'package:craftmate_client/dashboard/shop/bloc/view_listing/view_listing_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_repository/shop_repository.dart';

class ViewListingPage extends StatelessWidget {
  const ViewListingPage({super.key, required this.query});

  final QueryProduct query;

  static Route<void> route(QueryProduct query) {
    return MaterialPageRoute<void>(
      builder: (_) => ViewListingPage(query: query),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ViewListingBloc(
        shopRepository: context.read(),
        userRepository: context.read(),
        chatRepository: context.read(),
      )..add(ViewListingEvent.started(query.id)),
      child: BlocListener<ViewListingBloc, ViewListingState>(
        listener: (context, state) {
          switch (state) {
            case Error(:final errMessage):
              Alert.instance.showSnackbar(context, errMessage);
            case Sending():
              Modal.instance.showLoadingDialog(context);
            case Sent(:final seller, :final query):
              Navigator.of(context).pushReplacement(
                ChatScreen.route(seller, listingId: query.id),
              );
          }
        },
        child: const ViewListingScreen(),
      ),
    );
  }
}
