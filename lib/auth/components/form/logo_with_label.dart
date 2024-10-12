import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LogoWithLabel extends StatelessWidget {
  const LogoWithLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Assets.images.logoWithLabel.image(height: 32.0);
  }
}
