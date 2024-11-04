import 'package:craftmate_client/dashboard/profile/bloc/user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:user_repository/user_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  child: Text('Logout'),
                ),
              ];
            },
          ),
        ],
      ),
      body: BlocBuilder<UserProfileBloc, UserProfileState>(
        builder: (context, state) {
          switch (state) {
            case Initial():
            case Loading():
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Loaded(user: final user):
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: theme.colorScheme.surfaceContainer,
                      ),
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                user.name,
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          const Gap(16),
                          UserProfile(
                            user: user,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            case Error(message: final message):
              return Center(
                child: Text(message),
              );
          }

          return const Center(
            child: Text('Something went wrong'),
          );
        },
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ProfileImageAndEmail(
          name: user.name,
          imageUrl: user.image ?? '',
          email: user.email,
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _ProfileCounter(
              count: user.followerCount,
              label: 'Following',
            ),
            _ProfileCounter(
              count: user.followerCount,
              label: 'Followers',
            ),
            _ProfileCounter(
              count: user.projectCount,
              label: 'Projects',
            ),
          ],
        ),
        const Gap(12),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.edit_outlined),
          label: const Text('Edit Profile'),
        ),
      ],
    );
  }
}

class _ProfileImageAndEmail extends StatelessWidget {
  const _ProfileImageAndEmail({
    required this.email,
    required this.imageUrl,
    required this.name,
  });

  final String name;
  final String email;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final imageProvider = imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null;

    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: imageProvider,
          child: imageProvider == null
              ? Text(
                  name[0].toUpperCase(),
                  style: theme.textTheme.headlineLarge,
                )
              : null,
        ),
        const Gap(8),
        Text(
          email,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}

class _ProfileCounter extends StatelessWidget {
  const _ProfileCounter({
    required this.count,
    required this.label,
  });

  final int count;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Text(
            '$count',
            style: theme.textTheme.labelLarge,
          ),
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}