import 'package:craftmate_client/dashboard/profile/bloc/edit_bio/edit_bio_bloc.dart';
import 'package:craftmate_client/dashboard/profile/view/components/edit_profile_app_bar.dart';
import 'package:craftmate_client/dashboard/profile/view/components/edit_profile_text_field.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class EditBioScreen extends StatelessWidget {
  const EditBioScreen({super.key, required this.bio, required this.onSaved});

  final String bio;
  final void Function(User user) onSaved;

  static Route<void> route(String bio, void Function(User user) onSaved) {
    return PageTransition.effect.slideFromRightToLeft(
      EditBioScreen(
        bio: bio,
        onSaved: onSaved,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditBioBloc(
        userRepo: context.read(),
        bio: bio,
      ),
      child: BlocListener<EditBioBloc, EditBioState>(
        listener: (context, state) {
          switch (state) {
            case Saving():
              Modal.instance.showLoadingDialog(context);
            case Saved(:final user):
              onSaved(user);
              Navigator.of(context).pop();
              Navigator.of(context).pop();
          }
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: BlocBuilder<EditBioBloc, EditBioState>(
              builder: (context, state) {
                return EditProfileAppBar(
                  title: 'Edit bio',
                  onSaved: state.isBioChanged
                      ? () {
                          context
                              .read<EditBioBloc>()
                              .add(const EditBioEvent.bioSaved());
                        }
                      : null,
                );
              },
            ),
          ),
          body: _EditBioForm(
            bio: bio,
          ),
        ),
      ),
    );
  }
}

class _EditBioForm extends StatefulWidget {
  const _EditBioForm({required this.bio});

  final String bio;

  @override
  State<_EditBioForm> createState() => __EditBioFormState();
}

class __EditBioFormState extends State<_EditBioForm> {
  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _controller.text = widget.bio;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12.0),
      children: [
        BlocBuilder<EditBioBloc, EditBioState>(
          builder: (context, state) {
            return EditProfileTextField(
              controller: _controller,
              hintText: 'Bio',
              isMultiline: true,
              onChanged: (value) {
                context.read<EditBioBloc>().add(EditBioEvent.bioChanged(value));
              },
              onClear: () {
                context
                    .read<EditBioBloc>()
                    .add(const EditBioEvent.bioChanged(''));
              },
            );
          },
        ),
      ],
    );
  }
}
