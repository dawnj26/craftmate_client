import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/dashboard/profile/bloc/user_profile/user_profile_bloc.dart';
import 'package:craftmate_client/dashboard/profile/view/screens/edit_profile_screen.dart';
import 'package:craftmate_client/settings/views/settings_page.dart';
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
                PopupMenuItem(
                  child: const Text('Settings'),
                  onTap: () {
                    Navigator.push(context, SettingsPage.route());
                  },
                ),
                PopupMenuItem(
                  onTap: () {
                    context.read<AuthBloc>().add(AuthLogoutRequest());
                  },
                  child: const Text('Log out'),
                ),
              ];
            },
          ),
        ],
      ),
      body: BlocBuilder<UserProfileBloc, UserProfileState>(
        builder: (context, state) {
          switch (state) {
            case Initial() || Loading():
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 24,
                      ),
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
        const Gap(8),
        if (user.bio != null)
          Text(
            user.bio!,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCounter(
              count: user.followingCount,
              label: 'Following',
            ),
            ProfileCounter(
              count: user.followerCount,
              label: 'Followers',
            ),
            ProfileCounter(
              count: user.projectCount,
              label: 'Projects',
            ),
          ],
        ),
        const Gap(12),
        OutlinedButton.icon(
          onPressed: () async {
            await Navigator.of(context).push(EditProfileScreen.route(user));
            if (context.mounted) {
              context
                  .read<UserProfileBloc>()
                  .add(const UserProfileEvent.loadedProfile());
            }
          },
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

class ProfileCounter extends StatelessWidget {
  const ProfileCounter({
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
