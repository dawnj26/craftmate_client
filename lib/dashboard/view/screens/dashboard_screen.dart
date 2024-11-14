import 'package:craftmate_client/dashboard/chats/views/chats_page.dart';
import 'package:craftmate_client/dashboard/home/view/home_page.dart';
import 'package:craftmate_client/dashboard/profile/view/profile_page.dart';
import 'package:craftmate_client/dashboard/search/search_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/shop_page.dart';
import 'package:craftmate_client/material_inventory/user_materials/views/user_materials_page.dart';
import 'package:craftmate_client/project_management/user_projects/view/user_projects_page.dart';
import 'package:flutter/material.dart';

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

    _screenList = [
      const HomePage(),
      const ShopPage(),
      const SearchPage(),
      const ChatPage(),
      const ProfilePage(),
    ];
    super.initState();
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
    return Scaffold(
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
                Navigator.push(context, UserProjectsPage.route());
              },
            ),
            ListTile(
              title: const Text('Materials'),
              leading: const Icon(Icons.inventory_2_outlined),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(UserMaterialsPage.route());
              },
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
          NavigationDestination(
            selectedIcon: Icon(Icons.person_rounded),
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
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
