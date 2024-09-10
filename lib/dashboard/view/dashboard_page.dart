import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/project_management/view/create_project_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const DashboardPage());
  }

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentScreenIndex = 0;
  final _pageController = PageController();

  final _screenList = <Widget>[
    const HomeScreen(),
    const Center(
      child: Text('Second Screen'),
    ),
    const Center(
      child: Text('Third Screen'),
    ),
    const Center(
      child: Text('Fourth Screen'),
    ),
  ];

  void onTap(int value) {
    _pageController.jumpToPage(value);
    setState(() {
      if (value != _currentScreenIndex) {
        _currentScreenIndex = value;
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentScreenIndex,
        onDestinationSelected: onTap,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_bag),
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.chat),
            icon: Icon(Icons.chat_outlined),
            label: 'Chat',
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: onTap,
        children: _screenList,
      ),
    );
  }
}

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
              onPressed: () {},
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
                onPressed: () {
                  context.read<AuthBloc>().add(AuthLogoutRequest());
                },
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
              Center(
                child: Text('One'),
              ),
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
