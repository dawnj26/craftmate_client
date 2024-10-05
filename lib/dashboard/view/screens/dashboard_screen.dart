import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/home/bloc/home_bloc.dart';
import 'package:craftmate_client/dashboard/home/view/home_page.dart';
import 'package:craftmate_client/helpers/alert/alert.dart';
import 'package:craftmate_client/project_management/user_projects/view/user_projects_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentScreenIndex = 0;
  final _pageController = PageController();

  late final List<Widget> _screenList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _screenList = [
      BlocProvider.value(
        value: context.read<HomeBloc>(),
        child: const HomePage(),
      ),
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
  }

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
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.status == HomeStatus.error) {
          Alert.instance.showSnackbar(context, state.message);
        }
      },
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                ),
                child: Text(
                  'CraftMate',
                  style: textTheme.displayMedium?.copyWith(
                    color: colorScheme.onPrimary,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Projects'),
                leading: const Icon(Icons.folder_outlined),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, UserProjectsPage.route()).then((_) {
                    if (context.mounted) {
                      context.read<HomeBloc>().add(const HomeLoadProjects());
                    }
                  });
                },
              ),
              ListTile(
                title: const Text('Materials'),
                leading: const Icon(Icons.inventory_2_outlined),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FilledButton.icon(
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthLogoutRequest());
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text('Logout'),
                  style: FilledButton.styleFrom(
                    backgroundColor: colorScheme.error,
                    foregroundColor: colorScheme.onError,
                  ),
                ),
              ),
            ],
          ),
        ),
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
      ),
    );
  }
}
