import 'package:flutter/material.dart';
import 'package:super_bullet_list/bullet_list.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const TermsAndConditionsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Accepting terms',
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(width: 8.0),
              const Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 12.0),
          Text(
            'Welcome to CraftMate! These Terms and Conditions ("Agreement") govern your use of the CraftMate mobile application ("App"), developed by DDLEMJ ("we," "us," or "our"). By downloading, accessing, or using CraftMate, you agree to comply with and be bound by these terms. If you do not agree with any part of these Terms and Conditions, you must not use the App.',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 24.0),
          const _Section(
            labelText: '1. User Registration',
            content:
                "1.1 You may need to create an account to use certain features of CraftMate. You are responsible for providing accurate and complete information during the registration process and maintaining the confidentiality of your account credentials. 1.2 You agree to notify us immediately if you suspect unauthorized access or any other security breach related to your account.",
          ),
          const SizedBox(height: 24.0),
          const _Section(
            labelText: '2. Use of CraftMate',
            content:
                '2.1 CraftMate is a mobile application designed to assist users in discovering crafting project ideas based on available materials, connecting with fellow crafters, and selling or purchasing crafts.',
          ),
          const SizedBox(height: 12.0),
          const Text(
            '2.2 You may use CraftMate only for lawful purposes and in accordance with this Agreement. You agree not to:',
          ),
          const SizedBox(height: 12.0),
          const SuperBulletList(
            items: [
              Text(
                'Use the App in any way that violates applicable local, national, or international law or regulations.',
              ),
              Text(
                "Attempt to access or interfere with any part of the App, including other users' accounts.",
              ),
              Text(
                "Engage in any activity that may damage or disrupt the functioning of the App or its servers.",
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          const _Section(
            labelText: '3. User Content',
            content:
                '3.1 CraftMate allows users to create, share, and upload content, including project ideas, photos, and descriptions. By submitting content, you grant CraftMate a non-exclusive, royalty-free, worldwide license to use, display, and distribute this content within the app.',
          ),
          const SizedBox(height: 12.0),
          const Text(
            '3.2 You are solely responsible for the content you upload and share. You agree not to post any content that:',
          ),
          const SizedBox(height: 12.0),
          const SuperBulletList(
            items: [
              Text(
                'Violates the rights of any third party, including copyright or intellectual property rights.',
              ),
              Text(
                "Is offensive, defamatory, or harmful to others.",
              ),
              Text(
                "Contains viruses, malware, or other harmful code.",
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          const _Section(
            labelText: '4. Privacy and Data Protection',
            content:
                '4.1 Your use of CraftMate is also governed by our Privacy Policy, which explains how we collect, use, and protect your personal information.',
          ),
          const Text(
            '4.2 By using the App, you consent to the collection and use of your information as described in the Privacy Policy.',
          ),
          const SizedBox(height: 24.0),
          const _Section(
            labelText: '5. Material Inventory and Recommendations',
            content:
                '5.1 CraftMate allows you to manage your crafting material inventory and receive project recommendations based on your materials. You are responsible for ensuring that the information you input is accurate.',
          ),
          const Text(
            '5.2 The project recommendation engine is designed to suggest projects based on the materials you input. However, CraftMate does not guarantee the availability or accuracy of the materials or project instructions.',
          ),
          const Text(
            '5.3 You acknowledge that CraftMate is not responsible for any issues arising from the execution of recommended projects.',
          ),
          const SizedBox(height: 24.0),
          const _Section(
            labelText: '6. Community Interaction and E-Commerce',
            content:
                '6.1 CraftMate provides features that allow users to connect, comment, and share crafting ideas with others. You agree to interact respectfully and follow the community guidelines.',
          ),
          const Text(
            '6.2 CraftMate includes e-commerce features, allowing users to sell and purchase craft projects. You are responsible for ensuring that all transactions are legitimate and in compliance with local laws.',
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.labelText,
    required this.content,
  });

  final String labelText;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _LabelDivide(labelText: labelText),
        const SizedBox(height: 12.0),
        Text(
          content,
        ),
      ],
    );
  }
}

class _LabelDivide extends StatelessWidget {
  const _LabelDivide({
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelText,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(width: 8.0),
        const Expanded(child: Divider()),
      ],
    );
  }
}
