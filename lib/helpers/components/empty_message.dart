import 'package:craftmate_client/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EmptyMessage extends StatelessWidget {
  const EmptyMessage({
    super.key,
    required this.emptyMessage,
  });

  final String emptyMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.noDataTransparent.image(
            width: screenSize.width * 0.8,
          ),
          const Gap(12.0),
          Text(
            emptyMessage,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
