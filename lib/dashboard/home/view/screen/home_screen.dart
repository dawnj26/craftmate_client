import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/tabs/for_you_tab.dart';
import 'package:craftmate_client/globals.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/view/create_project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AuthInProgress) {
          Modal.instance.showLoadingDialog(context);
        }
      },
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).push(CreateProjectPage.route());
            },
            label: const Text('New Project'),
            icon: const Icon(Icons.add),
          ),
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            title: Image.asset(
              'assets/images/logo_with_label.png',
              width: 104.0,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_2_outlined),
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'For you',
                ),
                Tab(
                  text: 'Trending',
                ),
                Tab(
                  text: 'Categories',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ForYouTab(),
              Center(
                child: Text('Two'),
              ),
              Center(
                child: Text('Three'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
