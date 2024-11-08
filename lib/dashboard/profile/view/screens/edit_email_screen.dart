import 'package:craftmate_client/dashboard/profile/bloc/edit_email/edit_email_bloc.dart';
import 'package:craftmate_client/dashboard/profile/view/components/edit_profile_app_bar.dart';
import 'package:craftmate_client/dashboard/profile/view/components/edit_profile_text_field.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class EditEmailScreen extends StatelessWidget {
  const EditEmailScreen({super.key, required this.email, required this.onSave});

  final String email;
  final void Function(User user) onSave;

  static Route<void> route({
    required String email,
    required void Function(User user) onSave,
  }) {
    return PageTransition.effect.slideFromRightToLeft(
      EditEmailScreen(
        email: email,
        onSave: onSave,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditEmailBloc(
        userRepo: context.read(),
        email: email,
      ),
      child: BlocListener<EditEmailBloc, EditEmailState>(
        listener: (context, state) {
          switch (state) {
            case Saving():
              Modal.instance.showLoadingDialog(context);
            case Saved(:final user):
              onSave(user);
              Navigator.of(context).pop();
              Navigator.of(context).pop();
          }
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: BlocBuilder<EditEmailBloc, EditEmailState>(
              builder: (context, state) {
                final canSave = state.isEmailValid &&
                    state.email.isNotEmpty &&
                    state.isEmailChanged;

                return EditProfileAppBar(
                  title: 'Edit email',
                  onSaved: canSave
                      ? () {
                          context
                              .read<EditEmailBloc>()
                              .add(const EditEmailEvent.emailSaved());
                        }
                      : null,
                );
              },
            ),
          ),
          body: _EditEmailForm(
            email: email,
          ),
        ),
      ),
    );
  }
}

class _EditEmailForm extends StatefulWidget {
  const _EditEmailForm({
    required this.email,
  });

  final String email;

  @override
  State<_EditEmailForm> createState() => _EditEmailFormState();
}

class _EditEmailFormState extends State<_EditEmailForm> {
  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _controller.text = widget.email;
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
        BlocBuilder<EditEmailBloc, EditEmailState>(
          builder: (context, state) {
            String? errorText;

            if (!state.isEmailValid) {
              errorText = 'Email must be valid (e.g., name@example.com)';
            }
            if (state.email.isEmpty) {
              errorText = 'Email must not be empty';
            }

            return EditProfileTextField(
              controller: _controller,
              hintText: 'Email',
              errorText: errorText,
              onChanged: (value) {
                context
                    .read<EditEmailBloc>()
                    .add(EditEmailEvent.emailChanged(value));
              },
              onClear: () {
                context
                    .read<EditEmailBloc>()
                    .add(const EditEmailEvent.emailChanged(''));
              },
            );
          },
        ),
      ],
    );
  }
}
