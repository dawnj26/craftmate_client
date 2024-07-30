import 'package:flutter/material.dart';

class LogoWithLabel extends StatelessWidget {
  const LogoWithLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo_with_label.png',
      height: 32.0,
    );
  }
}
