import 'package:craftmate_client/dashboard/home/view/home_page.dart';
import 'package:flutter/material.dart';

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
    const HomePage(),
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
