import 'package:craftmate_client/auth/components/page_transitions.dart';
import 'package:craftmate_client/auth/otp/view/otp_form.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  static Route<void> route() {
    return slideFromRightToLeft(const OtpPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpForm(),
    );
  }
}
