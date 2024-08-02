import 'package:craftmate_client/auth/components/components.dart';
import 'package:craftmate_client/auth/components/form/fixed_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding.top;
    return SafeArea(
      child: FixedContainer(
        safePadding: safePadding,
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(8.0),
            LogoWithLabel(),
            Gap(48.0),
            HeaderTitle(
              title: 'OTP verify',
              subTitle: 'Enter the OTP sent to your email to verify',
            ),
          ],
        ),
      ),
    );
  }
}
