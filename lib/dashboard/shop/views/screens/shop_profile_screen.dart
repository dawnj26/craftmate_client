import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/shop/bloc/shop_profile/shop_profile_bloc.dart'
    as p;
import 'package:craftmate_client/dashboard/shop/views/pages/inbox_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/saved_items_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/shop_reviews_page.dart';
import 'package:craftmate_client/dashboard/shop/views/pages/user_listing_page.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/add_listing_screen.dart';
import 'package:craftmate_client/user_profile/views/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopProfileScreen extends StatelessWidget {
  const ShopProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const gap = 8.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('You'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          ListingProfile(
            subtitle: Container(
              margin: const EdgeInsets.only(top: 4),
              child: LinkButton(
                title: 'View profile',
                onPressed: () {
                  Navigator.push(
                    context,
                    UserProfilePage.route(
                      context.read<AuthBloc>().state.user.id,
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const _FourRectButtons(gap: gap),
          const SizedBox(
            height: 24.0,
          ),
          const _SectionDivider(),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Overview',
                style: theme.textTheme.titleMedium,
              ),
              BlocBuilder<p.ShopProfileBloc, p.ShopProfileState>(
                builder: (context, state) {
                  return FilterChip(
                    label: Text(state.period),
                    onSelected: (onSelected) =>
                        _onSelected(context, onSelected, state.period),
                    selected: true,
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          const _Overview(gap: gap),
        ],
      ),
    );
  }

  void _onSelected(BuildContext context, bool _, String period) {
    final curUser = context.read<AuthBloc>().state.user.id;

    showModalBottomSheet(
      context: context,
      builder: (context1) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                period == 'Last 7 days'
                    ? 'Last 7 days (selected)'
                    : 'Last 7 days',
              ),
              onTap: () {
                context.read<p.ShopProfileBloc>().add(
                      p.ShopProfileEvent.periodChanged('Weekly', curUser),
                    );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                period == 'Last 30 days'
                    ? 'Last 30 days (selected)'
                    : 'Last 30 days',
              ),
              onTap: () {
                context.read<p.ShopProfileBloc>().add(
                      p.ShopProfileEvent.periodChanged('Monthly', curUser),
                    );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                period == 'Last year' ? 'Last year (selected)' : 'Last year',
              ),
              onTap: () {
                context.read<p.ShopProfileBloc>().add(
                      p.ShopProfileEvent.periodChanged('Yearly', curUser),
                    );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                period == 'All time' ? 'All time (selected)' : 'All time',
              ),
              onTap: () {
                context.read<p.ShopProfileBloc>().add(
                      p.ShopProfileEvent.periodChanged('All time', curUser),
                    );
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({
    required this.gap,
  });

  final double gap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<p.ShopProfileBloc, p.ShopProfileState>(
      builder: (context, state) {
        switch (state) {
          case p.Initial() || p.Loading():
            return const Center(
              child: CircularProgressIndicator(),
            );
        }

        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _Activity(
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    title: 'Views',
                    count: state.shopOverview.totalViews,
                  ),
                ),
                SizedBox(
                  width: gap,
                ),
                Expanded(
                  child: _Activity(
                    icon: const Icon(Icons.shopping_bag_outlined),
                    title: 'Total products',
                    count: state.shopOverview.totalProducts,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: gap,
            ),
            Row(
              children: [
                Expanded(
                  child: _Activity(
                    icon: const Icon(Icons.star_border_rounded),
                    title: 'Seller ratings',
                    count: state.shopOverview.totalRating.toInt(),
                    onTap: () {
                      Navigator.push(context, ShopReviewsPage.route());
                    },
                  ),
                ),
                SizedBox(
                  width: gap,
                ),
                Expanded(
                  child: _Activity(
                    icon: const Icon(Icons.person_add_outlined),
                    title: 'New followers',
                    count: state.shopOverview.totalFollowers,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _Activity extends StatelessWidget {
  const _Activity({
    required this.icon,
    required this.title,
    required this.count,
    this.onTap,
  });
  final Icon icon;
  final String title;
  final int count;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$count',
                  style: theme.textTheme.headlineMedium,
                ),
                icon,
              ],
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: theme.textTheme.labelMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionDivider extends StatelessWidget {
  const _SectionDivider();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Text(
          'Selling activities',
          style: theme.textTheme.labelSmall,
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(
          child: Divider(
            thickness: 2,
          ),
        ),
      ],
    );
  }
}

class _FourRectButtons extends StatelessWidget {
  const _FourRectButtons({
    required this.gap,
  });

  final double gap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: MenuButton(
                icon: const Icon(Icons.favorite_outline_rounded),
                text: 'Saved items',
                onTap: () {
                  Navigator.push(context, SavedItemsPage.route());
                },
              ),
            ),
            SizedBox(
              width: gap,
            ),
            Expanded(
              child: MenuButton(
                icon: const Icon(Icons.inbox_outlined),
                text: 'Inbox',
                onTap: () {
                  Navigator.push(context, InboxPage.route());
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: gap,
        ),
        Row(
          children: [
            Expanded(
              child: MenuButton(
                icon: const Icon(Icons.star_border_rounded),
                text: 'Reviews',
                onTap: () {
                  Navigator.push(context, ShopReviewsPage.route());
                },
              ),
            ),
            SizedBox(
              width: gap,
            ),
            Expanded(
              child: MenuButton(
                icon: const Icon(Icons.folder_outlined),
                text: 'Your listings',
                onTap: () {
                  Navigator.push(context, UserListingPage.route());
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  final String text;
  final Icon icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(height: 4),
            Text(
              text,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    this.onPressed,
    required this.title,
  });

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        textStyle: theme.textTheme.labelSmall,
        padding: EdgeInsets.zero,
        minimumSize: const Size(50, 20),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(title),
    );
  }
}
