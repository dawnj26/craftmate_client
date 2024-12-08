import 'package:craftmate_client/auth/signup/view/components/document_section.dart';
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
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
            const DocumentSection(
              labelText: '1. User Registration',
              children: [
                Text(
                  "1.1 You may need to create an account to use certain features of CraftMate. You are responsible for providing accurate and complete information during the registration process and maintaining the confidentiality of your account credentials. 1.2 You agree to notify us immediately if you suspect unauthorized access or any other security breach related to your account.",
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '2. Use of CraftMate',
              children: [
                Text(
                  '2.1 CraftMate is a mobile application designed to assist users in discovering crafting project ideas based on available materials, connecting with fellow crafters, and selling or purchasing crafts.',
                ),
                SizedBox(height: 12.0),
                Text(
                  '2.2 You may use CraftMate only for lawful purposes and in accordance with this Agreement. You agree not to:',
                ),
                SizedBox(height: 12.0),
                SuperBulletList(
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
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '3. User Content',
              children: [
                Text(
                  '3.1 CraftMate allows users to create, share, and upload content, including project ideas, photos, and descriptions. By submitting content, you grant CraftMate a non-exclusive, royalty-free, worldwide license to use, display, and distribute this content within the app.',
                ),
                SizedBox(height: 12.0),
                Text(
                  '3.2 You are solely responsible for the content you upload and share. You agree not to post any content that:',
                ),
                SizedBox(height: 12.0),
                SuperBulletList(
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
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '4. Privacy and Data Protection',
              children: [
                Text(
                  '4.1 Your use of CraftMate is also governed by our Privacy Policy, which explains how we collect, use, and protect your personal information.',
                ),
                Text(
                  '4.2 By using the App, you consent to the collection and use of your information as described in the Privacy Policy.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '5. Material Inventory and Recommendations',
              children: [
                Text(
                  '5.1 CraftMate allows you to manage your crafting material inventory and receive project recommendations based on your materials. You are responsible for ensuring that the information you input is accurate.',
                ),
                Text(
                  '5.2 The project recommendation engine is designed to suggest projects based on the materials you input. However, CraftMate does not guarantee the availability or accuracy of the materials or project instructions.',
                ),
                Text(
                  '5.3 You acknowledge that CraftMate is not responsible for any issues arising from the execution of recommended projects.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '6. Community Interaction and E-Commerce',
              children: [
                Text(
                  '6.1 CraftMate provides features that allow users to connect, comment, and share crafting ideas with others. You agree to interact respectfully and follow the community guidelines.',
                ),
                Text(
                  '6.2 CraftMate includes e-commerce features, allowing users to sell and purchase craft projects. You are responsible for ensuring that all transactions are legitimate and in compliance with local laws.',
                ),
                Text(
                  "6.3 CraftMate does not handle payments directly but facilitates connections between buyers and sellers. Any issues with transactions must be resolved between the parties involved.",
                ),
              ],
            ),
            const DocumentSection(
              labelText: '7. Payment and Fees',
              children: [
                Text(
                  '7.1 While CraftMate does not facilitate payment processing directly, it may include third-party services for payment or transactions.',
                ),
                Text(
                  "7.2 Any purchases or sales made through CraftMate are subject to the third-party payment processor's terms and conditions, which you must review and accept.",
                ),
                Text(
                  '7.3 CraftMate may charge fees for premium services, which will be disclosed in advance.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '8. App Availability and Updates',
              children: [
                Text(
                  '8.1 CraftMate is provided "as is" and may be updated or modified at any time without prior notice. We do not guarantee that the App will always be available or free from errors.',
                ),
                Text(
                  '8.2 We may suspend or discontinue the App at any time, with or without notice, for maintenance or other reasons.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '9. Limitation of Liability',
              children: [
                Text(
                  '9.1 To the fullest extent permitted by law, CraftMate and its developers are not liable for any damages arising from the use or inability to use the App, including direct, indirect, incidental, or consequential damages.',
                ),
                Text(
                  '9.2 We do not guarantee the accuracy, reliability, or completeness of any content or information provided through CraftMate.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '10. Indemnification',
              children: [
                Text(
                  'You agree to indemnify and hold CraftMate and its developers harmless from any claims, damages, losses, liabilities, costs, or expenses (including legal fees) arising out of your use of the App, your content, or your violation of these Terms and Conditions.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '11. Governing Law',
              children: [
                Text(
                  'These Terms and Conditions are governed by and construed in accordance with the laws of Philippines. Any disputes related to these Terms and Conditions will be subject to the exclusive jurisdiction of the courts in Philippines.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '12. Changes to the Terms',
              children: [
                Text(
                  'We may update or revise these Terms and Conditions at any time. When we make changes, the updated version will be posted in the App or on our website, and the effective date will be revised. It is your responsibility to review these Terms periodically. Your continued use of CraftMate after any changes indicates your acceptance of the updated Terms.',
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const DocumentSection(
              labelText: '13. Contact Us',
              children: [
                Text(
                  'If you have any questions or concerns regarding these Terms and Conditions, please contact us at: support@craftmate.app.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
