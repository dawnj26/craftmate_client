import 'package:craftmate_client/dashboard/profile/bloc/edit_profile/edit_profile_bloc.dart';
import 'package:craftmate_client/dashboard/profile/view/screens/edit_bio_screen.dart';
import 'package:craftmate_client/dashboard/profile/view/screens/edit_email_screen.dart';
import 'package:craftmate_client/dashboard/profile/view/screens/edit_name_screen.dart';
import 'package:craftmate_client/dashboard/shop/views/screens/view_listing_screen.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_repository/user_repository.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key, required this.user});

  final User user;

  static Route<void> route(User user) {
    return MaterialPageRoute(
      builder: (context) => EditProfileScreen(
        user: user,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileBloc(
        userRepository: context.read(),
      )..add(
          EditProfileEvent.userChanged(
            user: user,
          ),
        ),
      child: BlocListener<EditProfileBloc, EditProfileState>(
        listener: (context, state) {
          switch (state) {
            case Uploading():
              Modal.instance.showLoadingDialog(context);
            case Uploaded():
              Navigator.pop(context);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Edit Profile'),
          ),
          body: BlocBuilder<EditProfileBloc, EditProfileState>(
            builder: (context, state) {
              switch (state) {
                case Initial() || Loading():
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
              }

              return ListView(
                children: [
                  _ProfilePicture(
                    user: state.user,
                    onTap: () => _handleProfilePictureTap(context),
                  ),
                  const Gap(8),
                  const Text(
                    'Change photo',
                    textAlign: TextAlign.center,
                  ),
                  const Gap(24),
                  _ProfileDetails(
                    user: state.user,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _handleProfilePictureTap(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a photo'),
              onTap: () {
                Navigator.pop(context);
                _handleUpload(ImageSource.camera, context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Choose from gallery'),
              onTap: () {
                Navigator.pop(context);
                _handleUpload(ImageSource.gallery, context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.remove_red_eye),
              title: const Text('View photo'),
              enabled: user.image != null,
              onTap: () {
                Navigator.pop(context);
                _handleView(context, user.image!);
              },
            ),
          ],
        );
      },
    );
  }

  void _handleView(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (_) {
        return ZoomPhoto(imageUrl: imageUrl);
      },
    );
  }

  Future<void> _handleUpload(ImageSource source, BuildContext context) async {
    final picker = ImagePicker();
    final media = await picker.pickImage(source: source);

    if (media == null || !context.mounted) return;

    context
        .read<EditProfileBloc>()
        .add(EditProfileEvent.photoUploaded(filePath: media.path));
  }
}

class _ProfileDetails extends StatelessWidget {
  const _ProfileDetails({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'About you',
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        _TileButton(
          tileTitle: 'Name',
          value: user.name,
          onTap: () {
            Navigator.push(
              context,
              EditNameScreen.route(
                user.name,
                onNameSaved: (user) => _handleSave(context, user),
              ),
            );
          },
        ),
        _TileButton(
          tileTitle: 'Email',
          value: user.email,
          onTap: () {
            Navigator.push(
              context,
              EditEmailScreen.route(
                email: user.email,
                onSave: (user) => _handleSave(context, user),
              ),
            );
          },
        ),
        _TileButton(
          tileTitle: 'Bio',
          value: user.bio?.replaceAll('\n', ' '),
          onTap: () {
            Navigator.push(
              context,
              EditBioScreen.route(
                user.bio ?? '',
                (user) => _handleSave(context, user),
              ),
            );
          },
        ),
      ],
    );
  }

  void _handleSave(BuildContext context, User user) {
    context
        .read<EditProfileBloc>()
        .add(EditProfileEvent.userChanged(user: user));
  }
}

class _TileButton extends StatelessWidget {
  const _TileButton({
    this.onTap,
    required this.tileTitle,
    this.value,
  });

  final void Function()? onTap;
  final String tileTitle;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(tileTitle),
            Row(
              children: [
                Text(
                  value ?? 'Add $tileTitle',
                  style: theme.textTheme.labelLarge,
                ),
                const Icon(Icons.chevron_right),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfilePicture extends StatelessWidget {
  const _ProfilePicture({required this.user, this.onTap});

  final void Function()? onTap;
  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final imageProvider = user.image != null ? NetworkImage(user.image!) : null;
    const profileSize = 48.0;
    final hasImage = user.image != null;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: profileSize,
              backgroundImage: imageProvider,
              child: !hasImage
                  ? Text(
                      user.name[0].toUpperCase(),
                      style: theme.textTheme.displayMedium,
                    )
                  : null,
            ),
            if (!hasImage)
              Container(
                height: profileSize * 2,
                width: profileSize * 2,
                color: Colors.black.withOpacity(0.2),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
