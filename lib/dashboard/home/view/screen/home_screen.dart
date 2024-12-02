import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/notification_page.dart';
import 'package:craftmate_client/dashboard/home/view/tabs/following_tab_page.dart';
import 'package:craftmate_client/dashboard/home/view/tabs/for_you_tab.dart';
import 'package:craftmate_client/dashboard/home/view/tabs/trending_tab_page.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
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
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

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
            title: Assets.images.logoWithLabel.image(
              width: 104,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    NotificationPage.route(context.read()),
                  );
                },
                icon: const Icon(Icons.notifications_outlined),
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              tabAlignment: TabAlignment.fill,
              // isScrollable: true,
              tabs: const [
                Tab(
                  text: 'Latest',
                ),
                Tab(
                  text: 'Following',
                ),
                Tab(
                  text: 'Trending',
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              ForYouPage(),
              FollowingTabPage(),
              TrendingTabPage(),
            ],
          ),
        ),
      ),
    );
  }
}
