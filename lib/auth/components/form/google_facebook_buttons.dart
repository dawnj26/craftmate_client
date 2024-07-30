import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleOrFacebookButtons extends StatelessWidget {
  const GoogleOrFacebookButtons({
    super.key,
    required this.googleCallback,
    required this.facebookCallback,
  });

  final void Function() googleCallback;
  final void Function() facebookCallback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _AlternativeButton(
          icon: const FaIcon(FontAwesomeIcons.google),
          callback: googleCallback,
        ),
        _AlternativeButton(
          icon: const FaIcon(FontAwesomeIcons.facebook),
          callback: facebookCallback,
        ),
      ],
    );
  }
}

class _AlternativeButton extends StatelessWidget {
  const _AlternativeButton({
    required this.icon,
    required this.callback,
  });

  final FaIcon icon;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        padding: const EdgeInsets.all(12.0),
      ),
      onPressed: callback,
      label: icon,
    );
  }
}
