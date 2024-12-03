import 'package:craftmate_client/report/bloc/report/report_bloc.dart';
import 'package:craftmate_client/report/views/reports_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const ReportsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReportBloc(
        reportRepository: context.read(),
      )..add(const ReportEvent.started()),
      child: const ReportsScreen(),
    );
  }
}
