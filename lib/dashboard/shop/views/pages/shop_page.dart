import 'package:craftmate_client/dashboard/shop/bloc/shop/shop_bloc.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_screen.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopBloc(
        shopRepository: context.read(),
        mapRepository: context.read(),
      )..add(const ShopEvent.started()),
      child: BlocListener<ShopBloc, ShopState>(
        listener: (context, state) {
          switch (state) {
            case Loading():
              Modal.instance.showLoadingDialog(context);
            case Loaded():
              Navigator.of(context).pop();
            case Error(:final message):
              Navigator.of(context).pop();
              Alert.instance.showSnackbar(context, message);
          }
        },
        child: const ShopScreen(),
      ),
    );
  }
}
