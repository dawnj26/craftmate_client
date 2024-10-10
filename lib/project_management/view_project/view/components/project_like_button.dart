import 'package:flutter/material.dart';

class ProjectLikeButton extends StatelessWidget {
  const ProjectLikeButton({
    super.key,
    this.onPressed,
    required this.isLiked,
  });

  final bool isLiked;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_outline,
      ),
      label: Text(isLiked ? 'Liked' : 'Like'),
    );
  }
}
