import 'package:craftmate_client/helpers/modal/modal.dart';
import 'package:craftmate_client/helpers/transition/page_transition.dart';
import 'package:craftmate_client/report/bloc/review/report_review_bloc.dart';
import 'package:craftmate_client/report/views/report_review/report_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportReviewPage extends StatelessWidget {
  const ReportReviewPage({super.key, required this.reportId});

  final String reportId;

  static Route<void> route(String reportId) {
    return PageTransition.effect.slideFromRightToLeft(
      ReportReviewPage(
        reportId: reportId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportReviewBloc(
        reportRepository: context.read(),
        userRepository: context.read(),
        chatRepository: context.read(),
        shopRepository: context.read(),
      )..add(ReportReviewEvent.started(reportId)),
      child: BlocListener<ReportReviewBloc, ReportReviewState>(
        listener: (context, state) {
          switch (state) {
            case Dismissing():
              Modal.instance.showLoadingDialog(context);
            case Dismissed():
              Navigator.pop(context);
              Modal.instance.showSuccessDialog(
                context,
                message: 'Report dismissed',
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            case Banned():
              Navigator.pop(context);
              Modal.instance.showSuccessDialog(
                context,
                message: 'User banned',
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            case Unbanned():
              Navigator.pop(context);
              Modal.instance.showSuccessDialog(
                context,
                message: 'User unbanned',
                onPressed: () {
                  Navigator.pop(context);
                },
              );

            case Error():
              Navigator.pop(context);
              Modal.instance.showErrorDialog(context, message: state.message);
          }
        },
        child: const ReportReviewScreen(),
      ),
    );
  }
}
