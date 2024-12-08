import 'package:craftmate_client/auth/signup/view/components/document_section.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const PrivacyPolicyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Accepting privacy policy',
                  style: theme.textTheme.labelLarge,
                ),
                const SizedBox(width: 8.0),
                const Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 12.0),
            Text(
              'At CraftMate, we value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, store, and protect your data when you use the CraftMate mobile application ("App"). By accessing or using the App, you agree to the collection and use of your data as described in this policy.',
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 24.0),
            DocumentSection(
              labelText: '1. Information We Collect',
              children: [
                const Text(
                  'When you use CraftMate, we collect the following types of information:',
                ),
                Text(
                  '1.1 Personal Information',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'When you create an account, we may collect personal information, such as your name, email address, phone number, and other details you provide during registration.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '1.2 Crafting Inventory Information',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'We collect details about the crafting materials you input into the App, including their names, quantities, and categories.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '1.3 Usage Information',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'We collect information about how you interact with the App, including pages visited, features used, search queries, and other data that helps us understand your preferences and improve the App’s functionality.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '1.4 Location Data',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'If you use location-based features in the App, such as finding nearby crafters or projects, we may collect information about your location.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '1.5 Device Information',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'We collect information about the device you use to access CraftMate, such as your device type, operating system, IP address, and unique device identifiers.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            DocumentSection(
              labelText: '2. How We User Your Information',
              children: [
                const Text(
                  'We use the information we collect for the following purposes:',
                ),
                Text(
                  '2.1 Account Management',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'To create and maintain your account, manage your material inventory, and provide personalized crafting project recommendations based on your inputs.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '2.2 Improve User Experience',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'To improve the functionality and usability of the App by analyzing how you interact with it, as well as to enhance and optimize user engagement.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '2.3 Personalized Recommendations',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'To recommend crafting projects that align with your materials and skill level, and to offer content tailored to your preferences.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '2.4 Communication',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'To send you important updates, including information about new features, promotions, or changes to the App. You can opt-out of non-essential communications at any time.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '2.5 Community Interaction',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'To enable communication with other users within the App, such as messaging and commenting on shared projects.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '2.6 E-Commerce Features',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'To process your purchases and sales of materials and craft projects within the app, and to provide you with relevant details about transactions.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            DocumentSection(
              labelText: '3. How We Share Your Information',
              children: [
                Text(
                  '3.1 Third-Party Service Providers',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'We may share your information with trusted third-party service providers who assist in operating the App, including hosting services, payment processors, and analytics providers. These third parties are obligated to keep your information secure and use it only for the purposes we specify.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '3.2 Legal Compliance',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'We may disclose your information to comply with applicable laws, regulations, legal processes, or government requests.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '3.3 Business Transfers',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'In the event of a merger, acquisition, or sale of assets, your information may be transferred as part of the business transition. We will notify you if your information is transferred to a different company.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '4. Data Security',
              children: [
                Text(
                  'We take reasonable measures to protect your information from unauthorized access, use, alteration, or disclosure. However, no data transmission or storage system is completely secure, and we cannot guarantee the absolute security of your personal information.',
                ),
              ],
            ),
            const DocumentSection(
              labelText: '5. Data Retention',
              children: [
                Text(
                  'We retain your personal data for as long as necessary to fulfill the purposes outlined in this Privacy Policy or as required by law. You may request to delete your account at any time, and we will remove your data from our active databases unless required for legal or legitimate business purposes.',
                ),
              ],
            ),
            DocumentSection(
              labelText: '6. Your Rights',
              children: [
                Text(
                  '6.1 Access and Correction',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'You have the right to access and update your personal information stored in the App. You can modify your profile, materials inventory, and preferences at any time.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '6.2 Deletion of Account',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'You may request to delete your account by contacting us. Once deleted, we will remove your personal data from our system, except for any data we are required to retain for legal or business reasons.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '6.3 Opting Out',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'You can opt out of receiving marketing communications by following the unsubscribe link in any email we send you or by adjusting your preferences in the app settings.',
                ),
                const SizedBox(height: 12.0),
                Text(
                  '6.4 Data Portability',
                  style: theme.textTheme.labelLarge,
                ),
                const Text(
                  'You can request a copy of the personal data we hold about you in a structured, commonly used, and machine-readable format.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '7. Changes to Privacy Policy',
              children: [
                Text(
                  'We may update this Privacy Policy from time to time. Any changes will be posted on this page, and the effective date will be updated. Your continued use of CraftMate after the changes are posted indicates your acceptance of the updated Privacy Policy.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '10. Contact Us',
              children: [
                Text(
                  'If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at:',
                ),
                Text('Craftmate'),
                Text('support@craftmate.app'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
