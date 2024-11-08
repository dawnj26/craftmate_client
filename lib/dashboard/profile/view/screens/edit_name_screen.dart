import 'package:craftmate_client/dashboard/profile/bloc/edit_name/edit_name_bloc.dart';
import 'package:craftmate_client/dashboard/profile/view/components/edit_profile_app_bar.dart';
import 'package:craftmate_client/dashboard/profile/view/components/edit_profile_text_field.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class EditNameScreen extends StatelessWidget {
  const EditNameScreen({super.key, required this.name, this.onNameSaved});

  final String name;
  final void Function(User user)? onNameSaved;

  static Route<void> route(
    String name, {
    void Function(User user)? onNameSaved,
  }) {
    return PageTransition.effect.slideFromRightToLeft(
      EditNameScreen(
        name: name,
        onNameSaved: onNameSaved,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditNameBloc(
        userRepository: context.read(),
        name: name,
      ),
      child: BlocListener<EditNameBloc, EditNameState>(
        listener: (context, state) {
          switch (state) {
            case Saving():
              Modal.instance.showLoadingDialog(context);
            case Saved(:final user):
              onNameSaved?.call(user);
              Navigator.pop(context);
              Navigator.pop(context);
          }
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: BlocBuilder<EditNameBloc, EditNameState>(
              builder: (context, state) {
                final isChanged = state.isNameChanged && state.name.isNotEmpty;

                return EditProfileAppBar(
                  title: 'Edit name',
                  onSaved: isChanged
                      ? () {
                          context
                              .read<EditNameBloc>()
                              .add(const EditNameEvent.nameSaved());
                        }
                      : null,
                );
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: _EditNameForm(
              name: name,
            ),
          ),
        ),
      ),
    );
  }
}

class _EditNameForm extends StatefulWidget {
  const _EditNameForm({
    required this.name,
  });

  final String name;

  @override
  State<_EditNameForm> createState() => _EditNameFormState();
}

class _EditNameFormState extends State<_EditNameForm> {
  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    _controller.text = widget.name;
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
    return Column(
      children: [
        BlocBuilder<EditNameBloc, EditNameState>(
          builder: (context, state) {
            String? errorText;

            if (state.isNameChanged && state.name.isEmpty) {
              errorText = 'Name cannot be empty';
            }

            return EditProfileTextField(
              hintText: 'Name',
              controller: _controller,
              errorText: errorText,
              onChanged: (value) => context
                  .read<EditNameBloc>()
                  .add(EditNameEvent.nameChanged(value)),
              onClear: () => context.read<EditNameBloc>().add(
                    const EditNameEvent.nameChanged(''),
                  ),
            );
          },
        ),
      ],
    );
  }
}
