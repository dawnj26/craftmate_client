import 'package:craftmate_client/auth/bloc/auth_bloc.dart';
import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/report/bloc/modal/report_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:report_repository/report_repository.dart';

class ReportModal extends StatelessWidget {
  const ReportModal({super.key, required this.reportedId});

  final int reportedId;

  static Future<void> show(BuildContext context, int reportedId) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      useSafeArea: true,
      builder: (context) => BlocProvider(
        create: (context) => ReportModalBloc(
          reportRepository: context.read<ReportRepository>(),
        ),
        child: BlocListener<ReportModalBloc, ReportModalState>(
          listener: (context, state) {
            switch (state) {
              case Loading():
                Modal.instance.showLoadingDialog(context);
              case Success():
                Navigator.of(context).pop();
                Modal.instance.showConfirmationModal(
                  context: context,
                  content: const Text('Reported successfully'),
                  title: 'Reported',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              case Failure(:final message):
                Modal.instance.showConfirmationModal(
                  context: context,
                  content: Text(message),
                  title: 'Error',
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
            }
          },
          child: ReportModal(
            reportedId: reportedId,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      snap: true,
      expand: false,
      builder: (_, scrollController) {
        return _ReportForm(
          scrollController: scrollController,
          reportedId: reportedId,
        );
      },
    );
  }
}

class _ReportForm extends StatelessWidget {
  const _ReportForm({required this.scrollController, required this.reportedId});

  final int reportedId;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      controller: scrollController,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Report',
            style: theme.textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ),
        BlocBuilder<ReportModalBloc, ReportModalState>(
          builder: (context, state) {
            return Column(
              children: ReportReason.values.map((reason) {
                return RadioListTile<ReportReason>(
                  title: Text(capitalize(reason.name)),
                  value: reason,
                  groupValue: state.selectedReason,
                  onChanged: (value) {
                    context
                        .read<ReportModalBloc>()
                        .add(ReportModalEvent.reasonSelected(value!));
                  },
                );
              }).toList(),
            );
          },
        ),
        const SizedBox(height: 16),
        BlocBuilder<ReportModalBloc, ReportModalState>(
          builder: (context, state) {
            return state.selectedReason != null
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          maxLines: 3,
                          decoration: const InputDecoration(
                            hintText: 'Please provide more details...',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            context.read<ReportModalBloc>().add(
                                  ReportModalEvent.descriptionChanged(value),
                                );
                          },
                        ),
                        const SizedBox(height: 16),
                        FilledButton(
                          onPressed: state.description.isNotEmpty
                              ? () {
                                  context.read<ReportModalBloc>().add(
                                        ReportModalEvent.submitted(
                                          context
                                              .read<AuthBloc>()
                                              .state
                                              .user
                                              .id,
                                          reportedId,
                                        ),
                                      );
                                }
                              : null,
                          child: const Text('Submit Report'),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  String capitalize(String s) {
    return s[0].toUpperCase() + s.substring(1);
  }
}