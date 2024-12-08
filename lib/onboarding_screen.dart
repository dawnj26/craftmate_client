import 'package:craftmate_client/auth/login/login.dart';
import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:craftmate_client/globals.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const _Onboarding();
  }
}

class _Onboarding extends StatefulWidget {
  const _Onboarding();

  @override
  State<_Onboarding> createState() => __OnboardingState();
}

class __OnboardingState extends State<_Onboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    MediaQuery.sizeOf(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.images.logoWithLabel.image(
                    height: 32.0,
                  ),
                  OutlinedButton(
                    onPressed: () async {
                      await config.prefs.setBool('onboarding', true);
                      if (!context.mounted) return;
                      Navigator.pushReplacement(context, LoginPage.route());
                    },
                    child: const Text('Skip'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  _Page(
                    title: 'Unleash your creativity with CraftMate!',
                    image: Assets.images.page1.image(),
                  ),
                  _Page(
                    title: 'Organize your materials',
                    subTitle:
                        'Easily add, edit, and search your inventory of crafting supplies.',
                    showWelcome: false,
                    image: Assets.images.page2.image(),
                  ),
                  _Page(
                    title: 'Get inspired',
                    subTitle:
                        'Receive personalized project recommendations based on the materials you have.',
                    showWelcome: false,
                    image: Assets.images.page3.image(),
                  ),
                  _Page(
                    title: 'AI Recommendations',
                    subTitle:
                        'Let CraftMate’s AI suggest unique projects tailored to what you have.',
                    showWelcome: false,
                    image: Assets.images.page4.image(),
                  ),
                  _Page(
                    title: 'Learn & Create',
                    subTitle:
                        'Access detailed instructions, videos, and step-by-step guidance for each project.',
                    showWelcome: false,
                    image: Assets.images.page5.image(),
                  ),
                  _Page(
                    title: 'Connect with other artisans',
                    subTitle:
                        'Share your creations, provide feedback, and get inspired by a vibrant crafting community.',
                    showWelcome: false,
                    image: Assets.images.page6.image(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: _currentPage > 0
                        ? () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null,
                    child: const Text('Back'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      6,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? theme.colorScheme.primary
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  FilledButton(
                    onPressed: () async {
                      if (_currentPage < 4) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        await config.prefs.setBool('onboarding', true);
                        if (!context.mounted) return;
                        Navigator.pushReplacement(context, LoginPage.route());
                      }
                    },
                    child: Text(_currentPage < 4 ? 'Next' : 'Done'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({
    required this.title,
    required this.image,
    this.showWelcome = true,
    this.subTitle,
  });

  final String title;
  final String? subTitle;
  final bool showWelcome;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                if (showWelcome)
                  Text(
                    'Welcome to Craftmate',
                    style: theme.textTheme.titleLarge,
                  ),
                const SizedBox(height: 20),
                image,
                const SizedBox(height: 20),
                Text(
                  title,
                  style: theme.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                if (subTitle != null) ...[
                  const SizedBox(height: 20),
                  Text(
                    subTitle!,
                    style: theme.textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
