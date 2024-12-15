import 'package:craftmate_client/dashboard/shop/views/pages/inbox_page.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/edit_listing_screen.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/shop_profile_screen.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:craftmate_client/report/bloc/review/report_review_bloc.dart';
import 'package:craftmate_client/user_profile/views/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class ReportReviewScreen extends StatelessWidget {
  const ReportReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Review'),
      ),
      body: BlocBuilder<ReportReviewBloc, ReportReviewState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
          }

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      'Summary',
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: theme.colorScheme.secondaryContainer,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        _capitalize(state.query.report.reason.name),
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
                if (state.query.report.images.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  ImageCarousel(
                    imageUrls: state.query.report.images,
                    height: screenSize.height * 0.3,
                  ),
                ],
                const SizedBox(height: 24),
                ProfileWithLabel(
                  labelText: 'Reported user',
                  user: state.query.reported,
                ),
                const SizedBox(height: 16),
                ProfileWithLabel(
                  labelText: 'Reporting user',
                  user: state.query.reporter,
                ),
                const SizedBox(height: 16),
                Text(
                  'Description',
                  style: theme.textTheme.labelLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  state.query.report.description,
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                const Spacer(),
                FilledButton(
                  onPressed: state.query.report.isReviewed
                      ? null
                      : () => _showDismissModal(context),
                  child: Text(
                    state.query.report.isReviewed
                        ? 'Report dismissed'
                        : 'Dismiss report',
                  ),
                ),
                TextButton(
                  onPressed: () => _showBanModal(
                    context,
                    state.query.reported.deletedAt != null,
                  ),
                  child: Text(
                    '${state.query.reported.deletedAt != null ? 'Unban' : 'Ban'} ${state.query.reported.name}',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showBanModal(BuildContext context, bool isBanned) {
    final title = isBanned ? 'Unban' : 'Ban';

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('$title user'),
          content: Text('Are you sure you want to $title this user?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                if (isBanned) {
                  context
                      .read<ReportReviewBloc>()
                      .add(const ReportReviewEvent.unbanUser());
                  return;
                }

                context
                    .read<ReportReviewBloc>()
                    .add(const ReportReviewEvent.banUser());
              },
              child: Text(title),
            ),
          ],
        );
      },
    );
  }

  void _showDismissModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Dismiss report'),
          content: const Text('Are you sure you want to dismiss this report?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context
                    .read<ReportReviewBloc>()
                    .add(const ReportReviewEvent.dismissReport());
              },
              child: const Text('Dismiss'),
            ),
          ],
        );
      },
    );
  }

  String _capitalize(String s) => s[0].toUpperCase() + s.substring(1);
}

class ProfileWithLabel extends StatelessWidget {
  const ProfileWithLabel({
    super.key,
    required this.user,
    required this.labelText,
  });

  final User user;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: theme.textTheme.labelLarge,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListingProfile(
              user: user,
              subtitle: Container(
                margin: const EdgeInsets.only(top: 4),
                child: LinkButton(
                  title: 'View profile',
                  onPressed: () {
                    Navigator.push(
                      context,
                      UserProfilePage.route(user.id, true),
                    );
                  },
                ),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  InboxPage.route(user.id),
                );
              },
              label: const Text('View chat history'),
              icon: const Icon(Icons.chevron_right_rounded),
            ),
          ],
        ),
      ],
    );
  }
}
