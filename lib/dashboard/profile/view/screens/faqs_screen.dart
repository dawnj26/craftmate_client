import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const FaqsScreen());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),
      body: ListView(
        children: [
          Accordion(
            headerPadding: const EdgeInsets.all(12.0),
            children: [
              AccordionSection(
                header: Text(
                  'What is CraftMate?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'CraftMate is a mobile application designed to inspire creativity and assist artisans in finding personalized craft projects based on the materials they have available. The app recommends crafting ideas, offers tutorials, allows users to manage their material inventory, and promotes community interaction within the crafting space.',
                ),
              ),
              AccordionSection(
                header: Text(
                  'How does CraftMate recommend crafting projects?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'CraftMate uses an intelligent recommendation engine that analyzes your materials inventory to suggest crafting projects that match the items you have. You can filter the recommendations based on your material preferences and skill level. The app will also provide step-by-step instructions and project tutorials to help you complete your chosen craft.',
                ),
              ),
              AccordionSection(
                header: Text(
                  'How do I create an account on CraftMate?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'To create an account, simply download the app and follow the registration steps. You’ll need to provide basic information such as your name and email address. Once your account is created, you can start adding materials to your inventory and explore project recommendations.',
                ),
              ),
              AccordionSection(
                header: Text(
                  'Can I add or remove materials from my inventory?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'Yes! You can easily add new materials to your inventory by specifying the material name, quantity, and category. You can also edit or remove materials as needed. CraftMate allows you to organize your materials and search for specific items in your inventory.',
                ),
              ),
              AccordionSection(
                header: Text(
                  'How can I interact with other crafters?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  "CraftMate promotes community engagement by allowing users to create profiles, connect with other crafters, share photos of completed projects, and provide feedback. You can comment on or like other users' projects and follow them to stay updated on their crafting activities.",
                ),
              ),
              AccordionSection(
                header: Text(
                  'Can I buy or sell crafting materials through CraftMate?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'Yes, CraftMate includes an e-commerce feature that enables users to buy and sell craft projects and materials. You can list your completed crafts for sale, set prices, and track your sales. The app does not handle payment transactions directly but provides a platform for messaging between buyers and sellers.',
                ),
              ),
              AccordionSection(
                header: Text(
                  'Can I save a crafting project for later?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  "Absolutely! You can save your favorite project recommendations for later. This feature allows you to come back to your saved projects whenever you're ready to start a new crafting venture.",
                ),
              ),
              AccordionSection(
                header: Text(
                  'Is CraftMate available on all devices?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'CraftMate is available for download on Android. Make sure you have the latest version of the app installed to enjoy the best features.',
                ),
              ),
              AccordionSection(
                header: Text(
                  'How secure is my personal information on CraftMate?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'We take your privacy seriously and implement robust security measures to protect your personal information. All data is stored securely, and we only share information with trusted third-party service providers to operate the app effectively. Please refer to our Privacy Policy for more details on how we handle your data.',
                ),
              ),
              AccordionSection(
                header: Text(
                  'How do I reset my password?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  "If you’ve forgotten your password, simply go to the login screen and click on the “Forgot Password” option. You’ll be asked to enter your registered email address, and we’ll send you instructions on how to reset your password.",
                ),
              ),
              AccordionSection(
                header: Text(
                  'How can I contact CraftMate support?',
                  style: theme.textTheme.labelLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                ),
                content: const Text(
                  'If you encounter any issues or have questions that aren’t answered here, you can reach out to our support team via the contact page within the app or by emailing us at support@craftmate.app.',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
